#!/bin/bash

docker build -t email-service .

docker run --net="host" \
		-p 50054 \
		-e MICRO_SERVER_ADDRESS=:50054 \
		-e MICRO_REGISTRY=mdns \
		-e GO_MICRO_BROKER=nats \
        email-service