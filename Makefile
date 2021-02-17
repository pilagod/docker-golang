.PHONY: build
build:
	docker build --build-arg GO=$(GO) --build-arg MIGRATE=$(MIGRATE) -t $(TAG) .