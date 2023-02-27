#!/bin/bash

# var=......
# a=z                     # 变量 a 赋值为字符串 z
# b="a string"            # 变量值包含空格，就必须放在引号里面
# c="a string and $b"     # 变量值可以引用其他变量的值
# d="\t\ta string\n"      # 变量值可以使用转义字符
# e=$(ls -l foo.txt)      # 变量值可以是命令的执行结果
# f=$((5 * 7))            # 变量值可以是数学运算的结果

# var1=value1
# var2=value2

# # 不使用引号
# var=value
# var=1
# var=$USER # 使用另一个变量
# var=$var1$var2 # 变量值拼接在一起

# # 单引号
# var='value value'
# var='\n' # 原样输出"\n"
# var='$USER' # 无法引用变量，会原样输出"$USER"字符串

# # 单引号拼接
# var='111''222' # 结果为：111222
# var=xxx'yyy' # 可以结合不使用引号的字符串使用
# var='User is '$USER', Shell is '$SHELL # 引用变量，直接拼在一起
# # 正确
# var='xxx''yyy'
# var='xxx'$USER
# # 错误
# # var='xxx' 'yyy'
# # var='xxx' $USER

# # 双引号
# var="value value"
# var="User is $USER, Shell is $SHELL"
# # 双引号拼接
# var="User is $USER"", Shell is $SHELL"
# # 混合使用
# var=User' is'" $USER, Shell is $SHELL"

var1=aaa
var2=(a b c)
var=$var1$var2 

echo $var