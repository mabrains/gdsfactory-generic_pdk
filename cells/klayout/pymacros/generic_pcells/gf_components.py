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
from generic_pcells.globals import basic_shapes_componenets

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


def get_valid_components(param, simple_cmp=0):
    gf_components = [""]
    if "pad" in param:
        gf_components = gf_components + ["pad"]
    elif "grating_coupler" in param:

        add_componenets_list = [
            gf_cmp
            for gf_cmp in list(pcell_methods.keys())
            if ("grating_coupler") in gf_cmp
        ]
        not_in_components = ["array", "tree", "add", "array4"]
        for not_in_cmp in not_in_components:
            for add_componenet in add_componenets_list:
                if not_in_cmp in add_componenet:
                    add_componenets_list.remove(add_componenet)

        gf_components = gf_components + add_componenets_list

    elif simple_cmp == 1:
        gf_components = gf_components + basic_shapes_componenets

    else:
        gf_components = gf_components + list(pcell_methods.keys())

    return gf_components
