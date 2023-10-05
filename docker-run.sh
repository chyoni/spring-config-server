#!/bin/bash

docker run -d -p 8888:8888 \
    --network ecommerce-network \
    -e "spring.rabbitmq.host=rabbitmq" \
    -e "spring.profiles.active=default" \
    --name config-service \
    cwchoiit/config-service:0.0.1