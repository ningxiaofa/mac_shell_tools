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

# 使用 find 命令查找所有目录和文件，并将名称中的字符串替换为新字符串
find . \( -type d -o -type f \) -name "*$old_string*" -print0 | while read -d $'\0' name; do
  # 获取新名称
  new_name="${name//$old_string/$new_string}"

  # 如果新名称已经存在，则跳过
  if [ -e "$new_name" ]; then
    echo "New name '$new_name' already exists, skipping..."
    continue
  fi

  # 重命名目录或文件
  mv "$name" "$new_name"
  echo "Renamed '$name' to '$new_name'"
done