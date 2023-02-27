#!/bin/bash

# - 字母、数字和下划线字符组成。
# - 第一个字符必须是一个字母或一个下划线，不能是数字。
# - 不允许出现空格和标点符号。

# 正确
variable_name=value
variable_name1=value
VAR_NAME=value
# 错误
variable_name1*=value
1variable_name=value

echo $variable_name $variable_name1 $VAR_NAME


