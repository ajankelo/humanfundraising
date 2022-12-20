install:
	#install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:
	#test commands
	python -m pytest -vv  --cov=main --cov=humanfundraising test_*.py

format:
	#format commands
	black *.py
lint:
	#lint commands
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py humanfundraising/*.py

deploy:
	#deploy commands

refactor:
	format lint

all: install test format lint deploy
