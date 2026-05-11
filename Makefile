PYTHON_TARGETS=lib fptg *.py
THREADS=16
RUN_CMD=run --threads=$(THREADS)

.PHONY: style lint results sanity

all: lint sanity

style:
	@python3 -m pycodestyle $(PYTHON_TARGETS)

lint: style
	@python3 -m pylint $(PYTHON_TARGETS)

sanity:
	@python3 -m fptg.random

manifest.json:
	@python3 -m run manifest

results: \
	results.CVC4--1.8.json \
	results.CVC5--1.3.3.json \
	results.CVC5--main_experimental--no-mpfr.json \
	results.Z3--4.16.0.json \
	results.BitWuzla--0.8.1.json \
	results.BitWuzla--0.9.0.json \
	results.MathSAT--5.6.16.json \
	results.MathSAT--5.6.17pre1.json

results.CVC4--%.json: manifest.json
	@python3 -m run $(RUN_CMD) cvc4 $*
	@python3 -m run analysis cvc4 $* > $(subst results,analysis,$(basename $@)).txt

results.CVC5--%.json: manifest.json
	@python3 -m run $(RUN_CMD) cvc5 $*
	@python3 -m run analysis cvc5 $* > $(subst results,analysis,$(basename $@)).txt

results.CVC5--%--no-mpfr.json: manifest.json
	@python3 -m run $(RUN_CMD) cvc5 $* --config=no-mpfr
	@python3 -m run analysis cvc5 $* --config=no-mpfr > $(subst results,analysis,$(basename $@)).txt

results.Z3--%.json: manifest.json
	@python3 -m run $(RUN_CMD) z3 $*
	@python3 -m run analysis z3 $* > $(subst results,analysis,$(basename $@)).txt

results.BitWuzla--%.json: manifest.json
	@python3 -m run $(RUN_CMD) bitwuzla $*
	@python3 -m run analysis bitwuzla $* > $(subst results,analysis,$(basename $@)).txt

results.MathSAT--%.json: manifest.json
	@python3 -m run $(RUN_CMD) mathsat $*
	@python3 -m run analysis mathsat $* > $(subst results,analysis,$(basename $@)).txt
