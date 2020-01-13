default:
	@echo "Choose a task"

dev:
	zola serve

build:
	mkdir	-p docs
	zola build --output-dir docs/
