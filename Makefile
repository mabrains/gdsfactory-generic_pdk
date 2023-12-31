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

# The top directory where environment will be created.
TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

# A pip `requirements.txt` file.
# https://pip.pypa.io/en/stable/reference/pip_install/#requirements-file-format
REQUIREMENTS_FILE := requirements.txt

# https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html
ENVIRONMENT_FILE := pdk_regression.yml

include third_party/make-env/conda.mk

# Lint python code
lint: | $(CONDA_ENV_PYTHON)
	@$(IN_CONDA_ENV) flake8 .


#================
## DRC Regression
#================

test-DRC-main: | $(CONDA_ENV_PYTHON)
	@$(IN_CONDA_ENV) klayout -v

#================
## LVS Regression
#================
# LVS main testing
test-LVS-main: | $(CONDA_ENV_PYTHON)
	@$(IN_CONDA_ENV) klayout -v

#===================
## PCells Regression
#===================

test-pcells: |  $(CONDA_ENV_PYTHON)
	@$(IN_CONDA_ENV) klayout -v
