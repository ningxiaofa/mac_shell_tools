#!/bin/bash

# 检查参数数量
if [ $# -lt 1 ]; then
  echo "Usage: $0 old_string [new_string]"
  exit 1
fi

# 获取要删除的字符串
old_string="$1"

# 获取要替换成的字符串
# 检查第二个参数是否存在并非空，如果不存在，则设置默认值为空字符串
new_string="${2:-}"

# 使用 find 命令查找所有子目录，并将目录名称中的字符串替换为新字符串
find . -type d -name "*$old_string*" -print0 | while read -d $'\0' dir; do
  # 获取新目录名称
  new_dir="${dir//$old_string/$new_string}"

  # 检查新目录是否已经存在
  if [ -d "$new_dir" ]; then
    echo "New directory '$new_dir' already exists, skipping..."
    continue
  fi

  # 重命名目录
  mv "$dir" "$new_dir"
  echo "Renamed directory '$dir' to '$new_dir'"
done