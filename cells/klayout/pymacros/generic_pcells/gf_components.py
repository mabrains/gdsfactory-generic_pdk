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

import inspect
import gdsfactory as gf
import pya
from typing import Optional
from .gf_layers_def import LAYER

# Get methods of the gf.compoenents module
compoenents_module = gf.components
methods = inspect.getmembers(gf.components)

# Filter out only methods
pcells = [method for method in methods if inspect.isfunction(method[1])]

pcell_params = {}
pcell_methods = {}

# iterate on methods to get each method parameters
for pcell in pcells:

    pcell_fn_name = pcell[0]
    pcell_fn = pcell[1]
    pcell_methods[pcell_fn_name] = pcell_fn

    # Get the function signature
    signature = inspect.signature(pcell_fn)

    # Access parameters
    parameters = signature.parameters

    # Alternatively, you can get just the parameter names
    parameter_names = list(parameters.keys())

    pcell_params[pcell_fn_name] = {}
    pcell_params[pcell_fn_name]["parameter_names"] = parameter_names
    pcell_params[pcell_fn_name]["parameters"] = parameters


# define global used variables
klayout_types = {
    float: pya.PCellDeclarationHelper.TypeDouble,
    int: pya.PCellDeclarationHelper.TypeInt,
    tuple: pya.PCellDeclarationHelper.TypeList,
    str: pya.PCellDeclarationHelper.TypeString,
    bool: pya.PCellDeclarationHelper.TypeBoolean,
    "float": pya.PCellDeclarationHelper.TypeDouble,
    "int": pya.PCellDeclarationHelper.TypeInt,
    "tuple": pya.PCellDeclarationHelper.TypeList,
    "str": pya.PCellDeclarationHelper.TypeString,
    "bool": pya.PCellDeclarationHelper.TypeBoolean,
    "component": pya.PCellDeclarationHelper.TypeCallback,
}
layers = LAYER.keys()  # layers list
not_lay = [
    "layers",
    "bbox_layers",
    "layer_label",
]  # parameter with layer string but not layer parameter
port_types = ["electrical", "optical"]  # ports types list
params_with_kwargs = ["component", "cross_section"]
tuples_list_params = ["bbox", "sizes", "offsets", "layer_label"]
