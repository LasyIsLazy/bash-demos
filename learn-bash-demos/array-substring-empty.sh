#!/bin/bash

echo '================================================================'
arr=(x y z)
echo "value: ${arr[@]:0}" # 输出空串
echo "value: ${arr[@]: }" # 输出空串
echo "value: ${arr[@]: :2}" # 输出空串
echo "value: ${arr[@]::2}" # 输出空串
echo "value: ${arr[@]: :}" # 输出空串
echo "value: ${arr[@]::}" # 输出空串

echo "value: ${arr[ ]}"