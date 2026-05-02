.PHONY: style

all: style lint

style:
	@python3 -m pycodestyle lib run.py

lint:
	@python3 -m pylint lib run.py
