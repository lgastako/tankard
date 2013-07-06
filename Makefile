all:
	@echo ''
	@echo 'f:reeze'
	@echo 'i:nstall'
	@echo 'r:equirements'
	@echo 't:est'
	@echo ''

cat:
	cat Makefile

freeze:
	pip freeze > requirements.txt

help: cat

install:
	pip install --upgrade -e .

requirements:
	pip install --upgrade -r requirements.txt

test:
	py.test -x -s --pdb


# Shortcuts

f: freeze
i: install
t: test
r: requirements
