#!/bin/bash

arr=(x y z)
# 注意要有括号，否则会变成对arr[0]的操作
arr+=(aaa bbb)
echo ${arr[@]} # 输出：x y z aaa bbb