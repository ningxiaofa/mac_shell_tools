#!/bin/bash

# 定义函数 _docker_ip
function _docker_ip() {
    docker inspect --format='{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)
}

# 调用函数 _docker_ip
_docker_ip