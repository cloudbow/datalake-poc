APP_NAME ?= app
COMMAND ?= cmd
CORE_DIR = core

test:
	@echo "Running tests for $(APP_NAME)"
	@cd $(CORE_DIR)/$(APP_NAME) && make test

build:
	@echo "Building Docker image for $(APP_NAME)"
	@cd $(CORE_DIR)/$(APP_NAME) && docker build -t $(APP_NAME) .

run:
	@echo "Running Docker image for $(APP_NAME) with command: $(COMMAND)"
	@docker run $(APP_NAME) $(COMMAND)