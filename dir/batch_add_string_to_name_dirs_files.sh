#!/bin/bash

# 检查参数数量
if [ $# -lt 2 ]; then
  echo "Usage: $0 add_string add_position"
  exit 1
fi

# 获取要添加的位置
add_position="$1"

# 获取要添加的字符串
add_string="$2"

# 执行循环以遍历目录下所有子目录和文件
shopt -s dotglob
for item in *; do
  # 检查项是否为目录或文件
  if [ -d "$item" ]; then
    # 处理目录
    dir_name="$(basename "$item/")"
    new_dir_name="${dir_name:0:$add_position}$add_string${dir_name:$add_position}"
    new_dir="$(dirname "$item")/$new_dir_name"

    # 检查新目录是否已经存在
    if [ -d "$new_dir" ]; then
      echo "New directory '$new_dir' already exists, skipping..."
      continue
    fi

    # 重命名目录
    mv "$item" "$new_dir"
    echo "Renamed directory '$item' to '$new_dir'"
  elif [ -f "$item" ]; then
    # 处理文件
    file_name="$(basename "$item")"
    new_file_name="${file_name:0:$add_position}$add_string${file_name:$add_position}"
    new_file="$(dirname "$item")/$new_file_name"

    # 检查新文件是否已经存在
    if [ -e "$new_file" ]; then
      echo "New file '$new_file' already exists, skipping..."
      continue
    fi

    # 重命名文件
    mv "$item" "$new_file"
    echo "Renamed file '$item' to '$new_file'"
  fi
done