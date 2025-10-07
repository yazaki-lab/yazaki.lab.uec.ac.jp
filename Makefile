.PHONY: build dev decap stop clean

HUGO_IMAGE := hugomods/hugo:exts-0.127.0

build:
	docker run --rm \
		-v $(PWD):/src \
		$(HUGO_IMAGE) \
		hugo

dev:
	docker run --rm -it \
		-v $(PWD):/src \
		-p 1313:1313 \
		$(HUGO_IMAGE) \
		hugo server --bind=0.0.0.0 --disableFastRender

decap:
	npx decap-server &
	docker run --rm -it \
		-v $(PWD):/src \
		-p 1313:1313 \
		$(HUGO_IMAGE) \
		hugo server --bind=0.0.0.0 --disableFastRender

stop:
	docker stop $$(docker ps -q --filter ancestor=$(HUGO_IMAGE)) 2>/dev/null || true

clean:
	docker rmi $(HUGO_IMAGE) 2>/dev/null || true
	rm -rf public resources/_gen