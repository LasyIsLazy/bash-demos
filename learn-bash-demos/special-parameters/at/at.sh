#!/bin/bash
# 执行 ./asterisk.sh a 'b c' '*.txt'
# 当前路径下有a.txt、b.txt asterisk.sh三个文件
var1=($@)
var2=("$@")

echo "${#var1[@]}" # 输出：5
echo "${#var2[@]}" # 输出：1

echo '================================================================'
for ele in "${var1[@]}"; do
    echo "$ele"
done
# 输出：
# a
# b
# c
# a.txt
# b.txt
echo '================================================================'
for ele in "${var2[@]}"; do
    echo "$ele"
done
# 输出：
# a b c *.txt