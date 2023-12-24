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
from .gf_components import pcell_methods, pcell_params
from .gf_layers_def import LAYER
import numpy as np
from flayout.pcell import copy_tree


class pcell_generator(pya.PCellDeclarationHelper):
    """
    KLAYOUT gdsfactory Pcells generator
    """

    def __init__(self, component):
        # Initialize super class.
        super(pcell_generator, self).__init__()

        self.gf_component = component if component in pcell_methods.keys() else ""

        params = pcell_params[self.gf_component]["parameter_names"]
        klayout_types = {
            "float": pya.PCellDeclarationHelper.TypeDouble,
            "int": pya.PCellDeclarationHelper.TypeInt,
            "Tuple": pya.PCellDeclarationHelper.TypeList,
            "layer": pya.PCellDeclarationHelper.TypeList,
        }
        # params_type = type(pcell_params[self.gf_component]["parameters"][params[0]].default
        self.param_keys = params
        self.param_values = []
        for param in params:
            param_val = pcell_params[self.gf_component]["parameters"][param]
            param_default = param_val.default
            if "layer" in param:
                param_type = "layer"
                param_default = (
                    LAYER[param_default.lower()]
                    if type(param_default) is str
                    else param_default
                )
            else:
                param_type = (
                    str(param_val)
                    .split(":")[1]
                    .split("=")[0]
                    .split("[")[0]
                    .replace(" ", "")
                )
            # Add the parameter to the PCell
            self.param_values.append(
                self.param(
                    name=param,
                    value_type=klayout_types[param_type],
                    description=param,
                    default=param_default,
                )
            )

    def produce_impl(self):
        """Produce the PCell."""
        params = dict(zip(self.param_keys, self._param_values))
        print(params)
        cell = self.gdsfactory_to_klayout(**params)
        cell.name = params["name"] if "name" in params.keys() else self.gf_component
        copy_tree(cell, self.cell, on_same_name="replace")

    def gdsfactory_to_klayout(self, **kwargs):
        gf.clear_cache()  # Clear cache to be able to reload components without changing the name
        layout = (
            pya.Application.instance()
            .main_window()
            .current_view()
            .active_cellview()
            .layout()
        )
        self.gf_cell = pcell_methods[self.gf_component](**kwargs)

        # Get the cell

        top = layout.create_cell(self.gf_component)

        # Add polygons
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
