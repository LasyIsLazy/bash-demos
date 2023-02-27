#!/bin/bash
arr=(x y z)
echo "${arr[@]}" # 输出：x y z
unset arr[1]
echo "${arr[@]}" # 输出：x z
echo "${arr[1]}" # 输出为空串
unset arr[@]
echo "${arr[@]}" # 输出为空串

declare -A arr2
arr2=([a]=x [b]=y [c]=z)
echo "${arr2[@]}" # 输出：z y x
unset arr2[b]
echo "${arr2[@]}" # 输出：z x
echo "${arr2[b]}" # 输出为空串