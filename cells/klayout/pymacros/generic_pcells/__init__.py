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

# ============================================================================
# --------------- Pcells Generators for Gdsfactory Generic PDK ---------------
# ============================================================================

import pya

from .klayout_pcells import pcell_generator
from .gf_components import pcell_methods


# It's a Python class that inherits from the pya.Library class
class generic_pdk(pya.Library):
    """
    The library where we will put the PCell into
    """

    def __init__(self):
        # Set the description
        self.description = "Generic PDK Pcells"
    
        for pcell_name, pcell_method in pcell_methods.items():
            # Create the PCell declarations

            self.layout().register_pcell(pcell_name, pcell_generator(pcell_name))

            

        # Register us with the name "generic_pdk".
        self.register("generic_pdk")
