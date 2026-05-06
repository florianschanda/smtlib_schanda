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

results: \
	results.CVC4.1.8.json \
	results.CVC5.1.3.3.json \
	results.Z3.4.16.0.json \
	results.BitWuzla.0.8.1.json \
	results.BitWuzla.0.9.0.json

results.CVC4.%.json: manifest.json
	@python3 -m run run solvers/cvc4.json $* --threads=$(THREADS)

results.CVC5.%.json: manifest.json
	@python3 -m run run solvers/cvc5.json $* --threads=$(THREADS)

results.Z3.%.json: manifest.json
	@python3 -m run run solvers/z3.json $* --threads=$(THREADS)

results.BitWuzla.%.json: manifest.json
	@python3 -m run run solvers/bitwuzla.json $* --threads=$(THREADS)
