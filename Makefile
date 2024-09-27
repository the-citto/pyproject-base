
.PHONY: base
.PHONY: dev
.PHONY: tests
.PHONY: build



PYTHON-VERSION := 3.12
# OUTDIR := --outdir /path



ifeq ($(OS),Windows_NT)
	PYTHON-SYS = py -$(PYTHON-VERSION)
	BIN-NAME = Scripts
	EXTENSION = .exe
else
	PYTHON-SYS = python$(PYTHON-VERSION)
	BIN-NAME = bin
endif

VENV-NAME:= .venv
BIN-DIR:= $(VENV-NAME)/$(BIN-NAME)

PIP-COMPILE:= $(BIN-DIR)/pip-compile$(EXTENSION)
PYTHON:= $(BIN-DIR)/python$(EXTENSION)


#

all: requirements/dev.txt

#

requirements/requirements.txt: requirements/requirements.in $(PIP-COMPILE)
	$(PYTHON) -m piptools compile -o requirements/requirements.txt requirements/requirements.in

base: requirements
	$(PYTHON) -m piptools sync requirements/requirements.txt


requirements/tests.txt: requirements.txt
	$(PYTHON) -m piptools compile -o requirements/tests.txt requirements/tests.in

tests: requirements
	$(PYTHON) -m pip install -e .[tests]


requirements/dev.txt: requirements/tests.txt
	$(PYTHON) -m piptools compile -o requirements/dev.txt requirements/dev.in

dev: requirements
	$(PYTHON) -m pip install -e .[dev]



$(PIP-COMPILE):
	$(PYTHON-SYS) -m venv $(VENV-NAME)
	$(PYTHON) -m pip install --upgrade pip pip-tools

#

build: base
	$(PYTHON) -m build $(OUTDIR)
	@echo
	@echo run make dev to continue development
	@echo



