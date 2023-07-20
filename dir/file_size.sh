#!/bin/bash
# 如果有输入目录，则使用输入目录；否则默认为当前目录
dir=${1:-.}

# 查看目录下的文件和目录大小, 可读的方式显示
du -h "$dir" | sort -rn