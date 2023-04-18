#!/bin/bash

# export的时候赋值
export a=aaa

# 也可以拆开
b=bbb
export b

# declare的时候赋值
declare -x c=ccc

# 也可以拆开
declare -x d
d=ddd


echo $a # 输出：aaa
echo $b # 输出：bbb
echo $c # 输出：ccc
echo $d # 输出：ddd