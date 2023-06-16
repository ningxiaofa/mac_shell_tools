#!/bin/bash

# 定义函数 _mycommand
function _myhistory() {
    tail -n $1 ~/.zsh_history | while read line; do
        echo "$(date +'%Y-%m-%d %H:%M:%S') $(echo $line | cut -d\; -f2-)"
    done
}

# 检查输入参数是否为空
if [ -z "$1" ]; then
    echo "Usage: $0 <num>"
    exit 1
fi

# 调用函数 _myhistory 并传入参数
_myhistory "$1"