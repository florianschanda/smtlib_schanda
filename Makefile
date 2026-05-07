PYTHON_TARGETS=lib *.py
THREADS=16
RUN_CMD=run --threads=$(THREADS)

.PHONY: style lint results

all: lint

style:
	@python3 -m pycodestyle $(PYTHON_TARGETS)

lint: style
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
	@python3 -m run $(RUN_CMD) cvc4 $*

results.CVC5.%.json: manifest.json
	@python3 -m run $(RUN_CMD) cvc5 $*

results.Z3.%.json: manifest.json
	@python3 -m run $(RUN_CMD) z3 $*

results.BitWuzla.%.json: manifest.json
	@python3 -m run $(RUN_CMD) bitwuzla $*
