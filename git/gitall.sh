#!/bin/bash

# 定义函数 _gitac
# git add . 
# git commit -m 'xxxx'
function _gitall() {
    git add .
    git commit -m $1
    git pull
    git push
}

# 检查输入参数是否为空
if [ -z "$1" ]; then
    echo "Usage: $0 <commit信息>"
    exit 1
fi

# 调用函数 _myhistory 并传入参数
_gitall "$1"