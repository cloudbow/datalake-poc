```makefile
# This Makefile contains build and run targets for a hello-world Dagster example
ENV_NAME:=dagster-env

build:
	@echo "Creating Conda environment..."
	conda create -n $(ENV_NAME) python=3.7
	@echo "Activating Conda environment..."
	conda activate $(ENV_NAME)
	@echo "Installing Dagster..."
	pip install dagster dagit

run:
	@echo "Running hello-world pipeline..."
	python hello_world.py
```