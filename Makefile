all:
	@echo ''
	@echo 'f:reeze'
	@echo 'i:nstall'
	@echo 'r:equirements'
	@echo 't:est'
	@echo 'u:pload'
	@echo ''

cat:
	cat Makefile

freeze:
	pip freeze > requirements.txt

help: cat

install:
	pip install --upgrade -e .

register:
	python setup.py register

requirements:
	pip install --upgrade -r requirements.txt

test:
	py.test -x -s --pdb

upload:
	python setup.py sdist upload


# Shortcuts

f: freeze
i: install
r: requirements
t: test
u: upload
