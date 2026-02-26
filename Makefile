.PHONY: help serve serve-lan build clean

# Default: show targets
help:
	@echo "Zensical commands:"
	@echo "  make serve     - Start dev server with live reload (http://127.0.0.1:8000)"
	@echo "  make dev       - Start dev server with live reload (http://127.0.0.1:8000)"
	@echo "  make serve-lan - Same, listen on all interfaces (e.g. http://<your-ip>:8000)"
	@echo "  make build     - Build static site into site/"
	@echo "  make clean     - Remove site/ and cache"

serve:
	uv run zensical serve

dev:
	uv run zensical serve

serve-lan:
	uv run zensical serve -a 0.0.0.0:8000

build:
	uv run zensical build

clean:
	rm -rf site/
	rm -rf .cache
