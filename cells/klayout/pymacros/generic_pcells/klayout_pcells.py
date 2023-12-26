# ========================================================================
# SPDX-FileCopyrightText: 2023 Mabrains Company
# Licensed under the GNU GENERAL PUBLIC License, Version 3.0 (the "License");
# you may not use this file except in compliance with the License.

#                    GNU GENERAL PUBLIC LICENSE
#                       Version 3, 29 June 2007

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
# SPDX-License-Identifier: GPL-3.0
# ========================================================================

import gdsfactory as gf
import pya
from generic_pcells.gf_components import (
    pcell_methods,
    pcell_params,
    klayout_types,
    layers,
    not_lay,
    port_types,
    params_with_kwargs,
    tuples_list_params,
)
from generic_pcells.gf_layers_def import LAYER
import numpy as np
from flayout.pcell import copy_tree
import ast


class pcell_generator(pya.PCellDeclarationHelper):
    """KLAYOUT gdsfactory Pcells generator"""

    def __init__(self, component):
        # Initialize super class.
        super(pcell_generator, self).__init__()

        # define component name
        self.gf_component = component if component in pcell_methods.keys() else ""

        # get componenet parameters
        params = pcell_params[self.gf_component]["parameter_names"]

        # set parameters names and values as keys and values
        self.param_keys = params
        self.param_values = []

        # for each parameter
        for param in params:

            # get parameter value string from function definition
            param_val = pcell_params[self.gf_component]["parameters"][param]

            # get parameter default value
            param_default = (
                param_val.default
                if param_val.default is not None
                else str(param_val.default)
            )

            # get parameter klayout type
            kl_type = self.get_param_types(param, param_val, param_default)

            # set klayout pcell parameter
            self_param = self.param(
                name=param,
                value_type=kl_type,
                description=param,
                default=param_default,
            )

            # append parameter values
            self.param_values.append(self_param)

            # generate options for parameters with listed values
            if "layer" in param and param not in not_lay:
                self.Type_handle = self_param
                for lay in layers:
                    self.Type_handle.add_choice(lay, lay.upper())
            elif "port_type" in param:
                self.Type_handle = self_param
                for port_type in port_types:
                    self.Type_handle.add_choice(port_type, port_type)

    def get_param_types(self, param, param_val, param_default):
        """Determine passed parameter klayout type
        Args:
            param (str) : name of the passed parameter
            param_val (inspect.parameter) : parameter values extracted by inspect
            param_default () : default value  of the passed parameter
        Returns:
            kl_type () : klayout type of the passed parameter
        """

        # try extract parameter type mentioned in gf.compoenents function definition (extracted by inspect)
        try:
            param_type = (
                str(param_val)
                .replace(" ", "")
                .split(":")[1]
                .split("=")[0]
                .split("[")[0]
                .lower()
                .split("optional")[0]
            )
            param_type = "tuple" if "layers" in param else param_type
            param_type = (
                "str"
                if (param in params_with_kwargs or param in tuples_list_params)
                else param_type
            )
        # set type to default value type if couldn not extract it from definition stringS
        except Exception:
            param_type = type(param_default)

        param_type = type(param_default) if param_type == "" else param_type

        # get klayout pcell parameter type
        try:
            kl_type = klayout_types[param_type]
        except Exception:
            kl_type = pya.PCellDeclarationHelper.TypeString

        return kl_type

    def coerce_parameters_impl(self):
        """Handle parameters description"""
        # We employ coerce_parameters_impl to decide whether the handle or the
        # numeric parameter has changed (by comparing against the effective
        # radius ru) and set ru to the effective radius. We also update the
        # numerical value or the shape, depending on which on has not changed.
        for i, param_val in enumerate(self._param_values):
            if "<" in str(param_val):
                update_val = "" if "inspect" in param_val else param_val.split(" ")[1]
                self._param_values[i] = update_val

    def produce_impl(self):
        """Produce the PCell"""
        # get gdsfactory pcell parameters
        params = self.update_params()
        print(params)

        # generate pcell klayout cell
        cell = self.gdsfactory_to_klayout(**params)
        cell.name = params["name"] if "name" in params.keys() else self.gf_component
        copy_tree(cell, self.cell, on_same_name="replace")

    def gdsfactory_to_klayout(self, **kwargs):
        """Generate Klayout cell from gdsfactory cell
        Args:
            kwargs (dict) : passed arguments of the generated pcell
        """
        gf.clear_cache()  # Clear cache to be able to reload components without changing the name

        # read the current klayout window
        layout = (
            pya.Application.instance()
            .main_window()
            .current_view()
            .active_cellview()
            .layout()
        )

        # generate gdsfactory cell
        self.gf_cell = pcell_methods[self.gf_component](**kwargs)

        # generate klayout cell
        top = layout.create_cell(self.gf_component)

        # Add polygons from gdsfactory cell to klayout cell
        polygons = self.gf_cell.get_polygons(True)
        for layer, polygons in polygons.items():
            layer_idx = layout.layer(*layer)

            # Add pya.Polygon for every gdsfactory Polygon
            for polygon in polygons:
                polygon = np.array(polygon)
                polygon = polygon * 1000
                points_pya = [pya.Point(*p) for p in polygon]
                top.shapes(layer_idx).insert(pya.Polygon(points_pya))

        # Add all text
        labels = self.gf_cell.get_labels(True)
        for label in labels:
            layer_idx = layout.layer(label.layer, label.texttype)
            top.shapes(layer_idx).insert(
                pya.Text(label.text, label.center[0] * 1000, label.center[1] * 1000)
            )

        return top

    def update_params(self):
        """Update klayout pcells parameters to be passed to gdsfactory components"""

        # generat pcell parameter as dict
        params = dict(zip(self.param_keys, self._param_values))

        # replace kwargs key with the passed componenet parameters
        param_keys = self.param_keys
        if (
            "kwargs" in param_keys
            and params["kwargs"] != ""
            and "<" not in params["kwargs"]
        ):
            kwargs_index = param_keys.index("kwargs")

            kwargs_fn_key = ""
            for param_with_kwargs in params_with_kwargs:

                kwargs_fn_key = (
                    param_with_kwargs
                    if param_with_kwargs in self.param_keys
                    else kwargs_fn_key
                )

            kwargs_str = self._param_values[kwargs_index].replace(" ", "")
            kwargs_fn = self._param_values[self.param_keys.index(kwargs_fn_key)]

            kwargs_params = pcell_params[kwargs_fn]["parameter_names"]
            kwargs_dict = ast.literal_eval(kwargs_str)

            for kwargs_k, kwargs_v in kwargs_dict.items():

                if kwargs_k in kwargs_params:
                    params[kwargs_k] = kwargs_v

        # update parameters that pass list of tuples as string
        for tuples_list_param in tuples_list_params:
            if tuples_list_param in self.param_keys:
                params[tuples_list_param] = ast.literal_eval(
                    str(params[tuples_list_param])
                )

        # remove parameters with unvalid input such as empty string or None value
        none_params = []
        for i in range(len(self._param_values)):
            if self._param_values[i] == "None" or self._param_values[i] == "":
                self._param_values[i] = None
                none_params.append(self.param_keys[i])

        for none_param in none_params:
            params.pop(none_param)

        return params
