#!/bin/bash

# 定义函数 _gitac
# git add . 
# git commit -m 'xxxx'
function _gitac() {
    git add .
    git commit -m $1
}

# 检查输入参数是否为空
if [ -z "$1" ]; then
    echo "Usage: $0 <commit信息>"
    exit 1
fi

# 调用函数 _myhistory 并传入参数
_gitac "$1"