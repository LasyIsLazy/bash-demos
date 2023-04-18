#!/bin/bash

export var1=111
export var2=222

echo "var1=$var1 var2=$var2" # 输出：var1=111 var2=222

export -n var1
unset var2
echo "var1=$var1 var2=$var2" # 输出：var1=111 var2=

export -p | grep var1 # 输出空，var1已经不在环境变量中