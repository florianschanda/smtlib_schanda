PYTHON_TARGETS=lib *.py
THREADS=16

.PHONY: style lint results

all: style lint

style:
	@python3 -m pycodestyle $(PYTHON_TARGETS)

lint:
	@python3 -m pylint $(PYTHON_TARGETS)

manifest.json:
	@python3 -m run manifest

results: results.CVC4.1.8.json results.CVC5.1.3.3.json results.Z3.4.16.0.json

results.CVC4.1.8.json: manifest.json
	@python3 -m run run solvers/cvc4.json 1.8 --threads=$(THREADS)

results.CVC5.1.3.3.json: manifest.json
	@python3 -m run run solvers/cvc5.json 1.3.3 --threads=$(THREADS)

results.Z3.4.16.0.json: manifest.json
	@python3 -m run run solvers/z3.json 4.16.0 --threads=$(THREADS)
