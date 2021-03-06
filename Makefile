.PHONY: doc test

default: help

help:
	@echo "Targets:"
	@echo '  test	- Run tests'
	@echo '  doc    - Build docs'

test: deps
	prove -lvr test/

deps:
	@./test/check-system-deps.bash

doc: ReadMe.pod
	make -C doc/

ReadMe.pod: doc/Hither.swim
	swim --to=pod --complete --wrap $< > $@

clean:
	rm -fr django
