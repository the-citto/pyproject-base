
.PHONY: requirements
.PHONY: build


VENV_DIR := ./.venv
# VENV_PY := ${VENV_DIR}/Scripts/python.exe
VENV_PY := ${VENV_DIR}/bin/python
# LIBRARIES_DIR := path/to/libraries/directory

all: requirements

requirements: ${VENV_DIR}
	${VENV_PY} -m pip install --upgrade pip pip-tools
	${VENV_PY} -m piptools compile pyproject.toml
	${VENV_PY} -m piptools sync

dev: requirements
	${VENV_PY} -m pip install ipython pyinstaller		


${VENV_DIR}:
	py -3.11 -m venv ${VENV_DIR}

build:
	${VENV_PY} -m build #--outdir ${LIBRARIES_DIR}windows_whoami

