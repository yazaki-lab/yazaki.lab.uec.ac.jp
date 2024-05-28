.PHONY: build dev
build:
	hugo
dev:
	hugo server --disableFastRender
decap:
	npx decap-server