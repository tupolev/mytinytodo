#!/bin/bash
#"docker container stop php-nginx-run -t 1" only use if we want to wait for it to shutdown using -t as seconds to wait
docker container rm -f mytinytodo
docker build -t tupolev/mytinytodo:latest .
docker run --name mytinytodo  -v $(pwd)/:/src -p 9080:80 -p 9443:443 tupolev/mytinytodo:latest
