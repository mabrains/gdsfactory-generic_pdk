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
from generic_pcells.gf_components import pcell_methods, pcell_params,klayout_types,layers,not_lay,port_types,params_with_kwargs
from generic_pcells.gf_layers_def import LAYER
import numpy as np
from flayout.pcell import copy_tree


class pcell_generator(pya.PCellDeclarationHelper):
    """
    KLAYOUT gdsfactory Pcells generator
    """

    def __init__(self, component):
        # Initialize super class.
        super(pcell_generator, self).__init__()

        # define component name
        self.gf_component = component if component in pcell_methods.keys() else ""

        # get componenet parameters
        params = pcell_params[self.gf_component]["parameter_names"]
        
        # set parameters names and values as keys and values
        self.param_keys = []
        self.param_values = []

        self.set_params(params,self.gf_component)
    
    def set_params(self,params,component,suffix=""):
        
        self.param_keys += params
        # for each parameter 
        for param in params:
            
            # get parameter value string from function definition
            param_val = pcell_params[component]["parameters"][param]

            # get parameter default value
            param_default = param_val.default if param_val.default is not None else str(param_val.default)
            
            # get parameter type 
            try :
                param_type = str(param_val).replace(" ","").split(":")[1].split("=")[0].split("[")[0].lower().split("optional")[0]
                param_type = "tuple" if "layers" in param else param_type
            except Exception:
                param_type = type(param_default)
            
            param_type = type(param_default) if param_type == "" else param_type
            
            # get klayout pcell parameter type
            try :
                kl_type = klayout_types[param_type]
            except Exception:
                kl_type = pya.PCellDeclarationHelper.TypeString

            if param == "kwargs" and self.gf_component == "add_fidutials": 
                self.add_kwargs_params(params)

            else :
                
                param_name = param if suffix == "" else f"{param}_{suffix}"
                # set klayout pcell parameter
                self_param = self.param(
                        name=param_name,
                        value_type=kl_type,
                        description=param_name,
                        default=param_default,
                    )
                
                # append parameter values
                self.param_values.append(
                    self_param
                )
            
            # generate options for parameters with listed values 
            if "layer" in param and param not in not_lay  : 
                self.Type_handle = self_param
                for lay in layers :
                    self.Type_handle.add_choice(lay, lay.upper())
            elif "port_type" in param :
                self.Type_handle = self_param
                for port_type in port_types :
                    self.Type_handle.add_choice(port_type, port_type)


    def produce_impl(self):
        """Produce the PCell."""
        # get gdsfactory pcell parameters
        params = self.update_params()

        # generate pcell klayout cell
        cell = self.gdsfactory_to_klayout(**params)
        cell.name = params["name"] if "name" in params.keys() else self.gf_component
        copy_tree(cell, self.cell, on_same_name="replace")

    def gdsfactory_to_klayout(self, **kwargs):
        """Generate Klayout cell from gdsfactory cell"""
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
    
    def add_kwargs_params(self,params):
        
        try :
            kwargs_fn = str(pcell_methods[self.gf_component].__doc__).split("kwargs:")[1].split(" ")[1]
        except :
            kwargs_fn = f"kwargs_{self.gf_component}"
        
        kwargs_param = ""
        for param_with_kwargs in params_with_kwargs :
            kwargs_param = param_with_kwargs if param_with_kwargs in params else kwargs_param

        kwargs_param_cmp = self.param_values[self.param_keys.index(kwargs_param)].default
        print("kkkkkkk",kwargs_param_cmp)
        if "<" in kwargs_param_cmp :
            kwargs_param_cmp = kwargs_param_cmp.split("function")[1].split(" ")[1]
        kwargs_params = pcell_params[kwargs_param_cmp]["parameter_names"]
        
        self.set_params(kwargs_params,kwargs_param_cmp,suffix=kwargs_fn)

        self.param_keys.remove("kwargs")
    
    def update_params(self):
        """Update klayout pcells parameters to be passed to gdsfactory components"""
        
        # params = dict(zip(self.param_keys, self._param_values))
        # self.add_kwargs_params(params)
        params = dict(zip(self.param_keys, self._param_values))

        tuples_list_params = ["bbox","sizes","offsets"]
        for tuples_list_param in tuples_list_params :
            if tuples_list_param in self.param_keys :
                points = params[tuples_list_param]
                if type(points[0]) is list :
                    params[tuples_list_param] = ((float(points[0][0]),float(points[0][1])),(float(points[1][0],float(points[1][1]))))
                else :
                    params[tuples_list_param] = ((float(points[0]),float(points[1])),(float(points[2]),float(points[3])))
        
        none_params = []
        for i in range(len(self._param_values)):
            if self._param_values[i] == "None" or "<" in str(self._param_values[i]) or self._param_values[i] == "":
                self._param_values[i] = None
                none_params.append(self.param_keys[i])

        for none_param in none_params : 
            params.pop(none_param)

        return params
