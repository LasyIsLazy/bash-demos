#!/bin/bash


# 显示声明一个数组
declare -A arr
# 只是声明为数组，但是没有任何内容
echo ${arr[@]} # 输出：arr:

echo '通过下标赋值'
arr[a]=xxx
arr[b]=yyy
arr[c]=zzz
# 输出所有元素
echo ${arr[@]} # 输出：zzz yyy xxx（关联数组中的元素是没有顺序的，这里不一定按照这个顺序输出）
# 输出指定key的元素
echo b: ${arr[b]} # 输出：b: yyy

echo '一次性赋值'
arr=([a]=xxx [b]=yyy [c]=zzz)
echo b: ${arr[b]} # 输出：b: yyy

echo '另一种一次性赋值的形式'
arr=(a xxx b yyy c zzz)
echo b: ${arr[b]} # 输出：b: yyy
