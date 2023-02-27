#!/bin/bash

array=(0 1 2 3 4 5 6 7 8 9 0 a b c d e f g h)
echo ${array[@]:7} # 输出：7 8 9 0 a b c d e f g h
echo ${array[@]:7:2} # 输出：7 8
echo ${array[@]: -7:2} # 输出：b c
echo ${array[@]: -7:-2} # 输出：-2: 子串表达式 < 0
echo ${array[@]:0} # 输出：0 1 2 3 4 5 6 7 8 9 0 a b c d e f g h
echo ${array[@]:0:2} # 输出：0 1
echo ${array[@]: -7:0} # 输出空串

declare -A arr2
arr2=([a]=x [b]=y)
echo "${arr2[@]:0:1}"

