install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:	
	find ./codes -type f -name "*.py" -exec black {} \;
	find ./codes -type f -name "*.ipynb" -exec nbqa black {} \;

install_actions: 
	pip install --upgrade pip &&\
		pip install -r requirements_actions.txt

lint:
	find ./codes -type f -name "*.py" -exec ruff check {} \;
	find ./codes -type f -name "*.ipynb" -exec nbqa ruff {} \;

test:
	python -m pytest -vv --cov=codes/project_codes codes/test_codes/*.py
	python -m pytest --nbval codes/project_codes/*.ipynb 

all : install test format lint 
