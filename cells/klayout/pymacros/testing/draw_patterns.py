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

"""
Usage:
  draw_patterns.py --output_path=<path> [--n_patterns=<n>] [--patterns_spacing=<patt_sp>]

  -h, --help                    Show help text.
  --output_path=<path>          Path to output layouyt files
  --n_patterns=<n>              Number of drawn patterns
  --patterns_spacing=<patt_sp>  Spacing between patterns
"""
from docopt import docopt
import pya
import os
import shutil
import logging
import sys
import ast
import random
import gdsfactory as gf
import numpy as np

# read pymacros path
technology_macros_path = os.path.abspath(os.path.dirname(os.path.dirname(__file__)))

# check existance of pymacros directory
if not os.path.isdir(technology_macros_path):
    logging.error(f"Technology pymacros path: {technology_macros_path} does not exist")
    exit(1)

# insert pcells path
sys.path.insert(0, technology_macros_path)

from generic_pcells import generic_pdk  # noqa: E402
from generic_pcells.gf_components import (  # noqa: E402
    pcell_methods,
    pcell_params,
    get_valid_components,
)
from generic_pcells.gf_layers_def import LAYER  # noqa: E402

# define used constants
N_PATT = 5
PATT_SP = 20


def layout_from_data(data, lib, layout_path="test.gds", pcell_name=""):
    """
    returns gds file of the drawn layout based on data extracted from netlist

    Args :
        data(dict) : pcell parameters data
        layout_path (str) : output layout path
        pcell_name (str) : generated pcell name
    """

    # define pcell bottom left point
    x_shift = 0
    y_shift = 0

    # read device_class and pcell parameters
    device = pcell_name
    param = list(data.values())

    # Create new layout
    layout = pya.Layout()

    # Create top cell
    top = layout.create_cell(f"{pcell_name}")

    # add Pcell
    pcell_id = lib.layout().pcell_id(device)
    pc = layout.add_pcell_variant(lib, pcell_id, param)
    top.insert(pya.CellInstArray(pc, pya.Trans(x_shift, y_shift)))
    top.flatten(1)

    options = pya.SaveLayoutOptions()
    options.write_context_info = False

    # Create layout output_path if not exist
    if not os.path.isdir(os.path.dirname(layout_path)):
        os.makedirs(os.path.dirname(layout_path), exist_ok=True)

    # write dummy gds file to store created pcell
    layout.write(layout_path, options)


def gen_param_patt(pcell_data, def_vals, pcell_name):
    """
    Generate pcells parameters patterns

    Args :
        pcell_data (dict) : pcells patterns data
        def_vals (dict) : Contains pcells parameters default values
    """

    # define min and max testing limits relative to default values
    min_limit = 1
    max_limit = 10

    # iterate over pcells parameters to set testing patterns based on parameters values and types
    patt_vals = {}
    for param_k, param_v in pcell_data.items():

        # get actual default value type
        try:
            def_val = ast.literal_eval(def_vals[param_k])
        except Exception:
            def_val = def_vals[param_k]

        # set random testing patterns (values) based on parameter type
        if type(def_val) is float:
            if param_k == "grating_separation":
                patt_vals[param_k] = def_val
            elif param_k == "p":
                patt_vals[param_k] = random.uniform(0, 1)
            else:
                patt_vals[param_k] = random.uniform(
                    def_val * min_limit, def_val * max_limit
                )
        elif type(def_val) is int and def_val > 0:
            patt_vals[param_k] = random.randint(
                def_val * min_limit, def_val * max_limit
            )
        elif type(def_val) is tuple and "layer" not in param_k:
            if type(def_val[0]) is float or type(def_val[0]) is int:
                if len(def_val) < 2:
                    patt_vals[param_k] = (
                        random.uniform(def_val[0] * min_limit, def_val[0] * max_limit),
                    )
                else:
                    patt_vals[param_k] = (
                        random.uniform(def_val[0] * min_limit, def_val[0] * max_limit),
                        random.uniform(def_val[1] * min_limit, def_val[1] * max_limit),
                    )
            else:
                patt_vals[param_k] = def_val

        elif "ComponentSpec" in str(param_v) or str(def_val) in pcell_methods.keys():

            if "component" in param_k or "grating_coupler" in pcell_name:
                valid_components = [""]
            else:
                valid_components = get_valid_components(param_k, simple_cmp=1)

            patt_vals[param_k] = random.choice(list(valid_components))

        elif type(def_val) is str:

            if def_val.lower() in LAYER:
                patt_vals[param_k] = random.choice(list(LAYER.keys())).upper()

            else:
                patt_vals[param_k] = ""
        else:
            patt_vals[param_k] = ""

    return patt_vals


def get_pcell_data(pcell_data, pcell_name):
    """
    Get pcells testing patterns data

    Args :
        pcell_data (dict) : pcells patterns data
        pcell_name (str) : generated pcell name
    """

    data = {}

    # extract parameters default values from parameter definition
    def_vals = {}
    for param_k, param_v in pcell_data.items():
        try:
            def_vals[param_k] = (
                str(param_v).replace(" ", "").split(":")[1].split("=")[1]
            )
        except Exception:
            def_vals[param_k] = None

    # generate random testing patterns
    for i in range(n_patt):
        data[f"{pcell_name}_{i}"] = gen_param_patt(
            pcell_data, def_vals, pcell_name=pcell_name
        )

    return data


def draw_patterns(lib, layout_path):
    """
    Draw testing patterns

    Args :
        lib (lib) : pcells library
        layout_path (str) : generated layout path
    """

    # iterate over generic pdk pcells and generate patterns for each
    for pcell_name in pcell_methods.keys():
        # if "add_trenches" in pcell_name :
        #     break
        print(pcell_name)

        # define pcell output path
        pcell_layout_path = os.path.join(output_path, f"{pcell_name}_patterns.gds")

        # get pcell data
        data = get_pcell_data(
            pcell_params[pcell_name]["parameters"], pcell_name=pcell_name
        )

        # generate layout based on extracted device data
        logging.info(f"Generating {pcell_name} following patterns {data}")
        cells = {}
        c_patt = gf.Component(f"{pcell_name}_patterns")
        for i in range(n_patt):
            gds_file = os.path.abspath(os.path.join(output_path, f"{pcell_name}.gds"))
            layout_from_data(
                data[f"{pcell_name}_{i}"],
                lib,
                layout_path=gds_file,
                pcell_name=pcell_name,
            )

            # read generated layout cell
            cell = gf.read.import_gds(gds_file)

            # remove temperory gds file
            os.remove(gds_file)

            # update generated cell name
            cell.name = pcell_name + f"{i}"

            cells[i] = c_patt << cell

            if i > 0:
                cells[i].xmin = cells[i - 1].xmax + patt_sp

        # write gds file for each pcell
        c_patt.write_gds(pcell_layout_path)


def align_cell(index, c_cell, cells_len, c_cell_xmax, c_cell_ymax, c_cell_ymin):
    """
    Align added cells

    Args :
        index (int) : cell index
        c_cell (gf.cell) : generated cell (to be aligned)
        cells_len (int) : length of generated cells
        c_cell_xmax (list) : list of cells xmax limit
        c_cell_ymax (list) : list of cells ymax limit
        c_cell_ymin (float) : list of cells ymin limit
    """

    # define number of horizontal and vertical levels (to have gds shape as compact as possible)
    v_lvls = int(np.sqrt(cells_len))
    h_lvls = int(cells_len / v_lvls)

    if index == 0:
        c_cell_xmax.append(c_cell.xmax)
        c_cell_ymax.append(c_cell.ymax)
        c_cell_ymin = c_cell.ymin
    elif index % h_lvls == 0:
        c_cell.ymin = np.max(c_cell_ymax) + patt_sp
        c_cell_ymax.append(c_cell.ymax)
        c_cell_ymin = c_cell.ymin
        c_cell_xmax.append(c_cell.xmax)
    else:
        c_cell.xmin = c_cell_xmax[index - 1] + patt_sp
        c_cell_xmax.append(c_cell.xmax)
        c_cell.ymin = c_cell_ymin
        c_cell_ymax.append(c_cell.ymax)

    return c_cell_xmax, c_cell_ymax, c_cell_ymin


def main():
    """
    Draw testing patterns
    """

    # Instantiate and register the library
    generic_pdk()

    # === Read generic PDK pcells ===
    lib = pya.Library.library_by_name("generic_pdk")

    # define output layout path
    layout_path = os.path.join(output_path, "generic_pcells_patterns.gds")

    draw_patterns(lib, layout_path)


if __name__ == "__main__":

    # Args
    arguments = docopt(__doc__, version="Generic_Pcells: 0.1")
    output_path = arguments["--output_path"]

    # checking output path
    if os.path.isdir(output_path):
        shutil.rmtree(output_path)
        os.makedirs(output_path, exist_ok=True)
    else:
        os.makedirs(output_path, exist_ok=True)

    n_patt = int(arguments["--n_patterns"]) if arguments["--n_patterns"] else N_PATT
    patt_sp = (
        float(arguments["--patterns_spacing"])
        if arguments["--patterns_spacing"]
        else PATT_SP
    )

    main()
