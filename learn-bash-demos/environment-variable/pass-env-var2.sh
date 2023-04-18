#!/bin/bash

# 文件2：pass-env-var1.sh
# 在文件1中调用执行该文件
echo '================================In shell2'
echo $BASHPID # 输出当前Bash进程的ID，证明和脚本1不在一个Shell下
# 可以读取到export的环境变量，但是读不到普通的变量
echo "In shell2 var=$var env_var=$env_var" # 输出：In shell2 var= env_var=222

# 通过export -p命令可以看到env_var存在于环境变量中
echo "export -p: $(export|grep env_var)" # 输出：printenv: env_var=222

# 对环境变量进行修改
env_var=xxx
echo "修改后 env_var=$env_var" # 输出：修改后 env_var=xxx

echo '================================Quit shell2'
