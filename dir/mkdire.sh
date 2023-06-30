#1/bin/bash
function _mkdire()
{
    # 能创建,但是无法进入
    mkdir $1 && cd $1
}

# 检查输入参数是否为空
if [ -z "$1" ]; then
    echo "Usage: $0 <dir_name>"
    exit 1
fi

# 调用函数 _myhistory 并传入参数
_mkdire "$1"

# 注:
# 在 Shell 脚本中，每个命令都在自己的子 shell 中执行，
# 因此无法在当前 shell 中改变工作目录，执行 cd 命令只会在子 shell 中生效，
# 但不会影响到当前 shell。

# 但是通过终端下直接执行: [就可以!!!]
#  mkdir dir_name && cd $dir_name