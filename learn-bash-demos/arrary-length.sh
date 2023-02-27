#!/bin/bash
arr=(x y z)
arr[10]=aaa
# 虽然下标已经到了10，但是实际上只有4个元素，所以长度为4
echo ${#arr[@]} # 输出：4
# 空串也是一个元素
arr[10]=''
echo ${#arr[@]} # 输出：4
# 使用unset进行删除后，不再占用
unset arr[10]
echo ${#arr[@]} # 输出：3

