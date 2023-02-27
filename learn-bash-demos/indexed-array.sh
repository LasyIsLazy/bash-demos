#!/bin/bash

# 显示声明一个数组，也可以不写
declare -a arr
# 只是声明为数组，但是没有任何内容
echo ${arr[@]} # 输出空字符串

# 通过下标赋值
arr[0]=xxx
arr[1]=yyy
arr[2]=zzz
echo ${arr[@]} # 输出：xxx yyy zzz

# 一次性赋值
arr=(xxx yyy zzz)
echo ${arr[@]} # 输出：xxx yyy zzz

# 元素可以以任意顺序填写
arr=([0]=xxx [2]=zzz [1]=yyy)
echo ${arr[@]} # 输出：xxx yyy zzz

# xxx为第一个元素，没有下标，则视为0；zzz没有下标，则为前面元素的下标+1，即2
arr=(xxx [1]=yyy zzz)
echo ${arr[@]} # 输出：xxx yyy zzz

# 这里填入元素zzz的时候，最大下标为1（即yyy所在的元素位置），所以-1代表yyy所在的位置，导致zzz元素替换掉了yyy
arr=(xxx yyy [-1]=zzz)
echo ${arr[@]} # 输出：xxx zzz
