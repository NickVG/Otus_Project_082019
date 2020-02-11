#!/bin/bash

echo `git show --format="%h" HEAD | head -1` > build_info.txt
echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt

docker build -t $USER_NAME/search_engine_crawler:ubuntu2.3 --build-arg RMQ_USERNAME=$RMQ_USERNAME --build-arg RMQ_PASSWORD=$RMQ_PASSWORD .

