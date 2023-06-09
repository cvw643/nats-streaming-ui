NAME := nats-streaming-ui
TAG ?= $(shell git describe --tags --abbrev=0 --always 2>/dev/null)

default:
	docker build -t cvw643/$(NAME):$(TAG) .
	docker tag cvw643/$(NAME):$(TAG) cvw643/$(NAME):latest
	docker push cvw643/$(NAME):$(TAG)
	docker push cvw643/$(NAME):latest
