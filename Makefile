# Tutorial on Make's assignment operators:
# = lazy set, := immediate set, ?= lazy set If absent, += append, != shell assignment

ENV_NAME ?= python3-stdlib-demos
ENV_PATH ?= $(MY_CONDA_ENVS)/$(ENV_NAME)
LOCATIONS := $(shell ls -d modules 2> /dev/null)

build-env:
	conda create -p $(ENV_PATH) python=3.10 --yes


install:
	pip install --upgrade pip
	pip install -e .[DEV]


fresh-env:
	CONDA_ENV_PATH=$(ENV_PATH) make build-env
	CONDA_ENV_PATH=$(ENV_PATH) conda run -p $(ENV_PATH) --no-capture-output make install


lint:
	flake8 --show-source --statistics --benchmark  $(LOCATIONS)


typecheck:
	pytype --keep-going $(LOCATIONS)