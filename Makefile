PYTHON_TARGETS=lib *.py

.PHONY: style

all: style lint

style:
	@python3 -m pycodestyle $(PYTHON_TARGETS)

lint:
	@python3 -m pylint $(PYTHON_TARGETS)
