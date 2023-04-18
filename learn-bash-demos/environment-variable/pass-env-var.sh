#!/bin/bash

# 文件1：pass-env-var.sh
# 执行命令：./learn-bash-demos/environment-variable/pass-env-var.sh
echo $BASHPID
var=111
export env_var=222

echo "In shell1 var=$var env_var=$env_var" # 输出：In shell1 var=111 env_var=222

sh2=$(dirname "$0")/pass-env-var2.sh
# 起一个子进程执行命令2
bash $sh2

# 虽然文件2中对该环境变量进行了修改，但是不会子进程的修改不会影响到父进程中的变量，只会对其子进程产生影响。
echo "env_var=$env_var" # 输出：env_var=222
