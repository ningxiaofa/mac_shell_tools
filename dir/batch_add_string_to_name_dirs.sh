#!/bin/bash

# 检查参数数量
if [ $# -lt 2 ]; then
  echo "Usage: $0 add_string add_position"
  exit 1
fi

# 获取要添加的字符串
add_position="$1"

# 获取要添加的位置
add_string="$2"

# 执行循环以遍历目录下所有子目录
shopt -s dotglob
for dir in */ ; do
  # 跳过非目录
  if [ ! -d "$dir" ]; then
    continue
  fi

  # 获取目录名，添加字符串并重命名为新名称
  dir_name="$(basename "$dir/")"
  new_dir_name="${dir_name:0:$add_position}$add_string${dir_name:$add_position}"
  new_dir="$(dirname "$dir")/$new_dir_name"

  # 检查新目录是否已经存在
  if [ -d "$new_dir" ]; then
    echo "New directory '$new_dir' already exists, skipping..."
    continue
  fi

  # 重命名目录
  mv "$dir" "$new_dir"
  echo "Renamed directory '$dir' to '$new_dir'"
done