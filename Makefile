.PHONY: dev build clean nuke

dev:
	@pnpm dev ||:

build:
	@pnpm build ||:

clean:
	rm -rf node_modules/
	rm -rf dist/

nuke: clean
	rm -f pnpm-lock.yaml
	@pnpm install ||:

%:
	@:
