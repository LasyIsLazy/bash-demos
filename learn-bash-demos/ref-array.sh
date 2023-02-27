#!/bin/bash


# 声明一个索引数组
arr1=(xxx yyy zzz)
# 声明一个关联数组
declare -A arr2
arr2=([a]=xxx [b]=yyy [c]=zzz)


echo '取某个元素'
echo 1: ${arr1[1]} # 输出：1: yyy
echo b: ${arr2[b]} # 输出：b: yyy
