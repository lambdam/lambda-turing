default:
	@echo "Choose a task"

dev:
	gutenberg serve

build:
	mkdir	-p docs
	gutenberg build --output-dir docs/
