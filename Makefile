# ========================================================================
# SPDX-FileCopyrightText: 2023 Mabrains Company
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0
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
