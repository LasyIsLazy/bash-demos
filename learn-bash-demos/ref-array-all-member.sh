#!/bin/bash

arr=(x y z)


echo '${name[@]}不使用双引号'
for ele in ${arr[@]}; do
    echo "ele: $ele"
done

echo '${name[*]}不使用双引号'
for ele in ${arr[*]}; do
    echo "ele: $ele"
done

echo '${name[@]}使用双引号'
for ele in "${arr[@]}"; do
    echo "ele: $ele"
done

echo '${name[@]}双引号其中有其他内容'
for ele in "<<<${arr[@]}>>>"; do
    echo "ele: $ele"
done

echo '${name[*]}使用双引号'
for ele in "${arr[*]}"; do
    echo "ele: $ele"
done
echo '${name[*]}双引号其中有其他内容'
for ele in "<<<${arr[*]}>>>"; do
    echo "ele: $ele"
done

arr=()
echo '================================================'

echo '${name[@]}使用双引号'
for ele in "${arr[@]}"; do
    echo "ele: $ele"
done

echo '${name[*]}使用双引号'
for ele in "${arr[*]}"; do
    echo "ele: $ele"
done

echo '${name[@]}使用双引号'
for ele in ""; do
    echo "ele: $ele"
done

echo '${name[*]}使用双引号'
for ele in ""; do
    echo "ele: $ele"
done
echo '${name[@]}使用双引号'
for ele in ''; do
    echo "ele: $ele"
done

echo '${name[*]}使用双引号'
for ele in ''; do
    echo "ele: $ele"
done
echo '================================================'

for ele in "a b c"; do
    echo "ele: $ele"
done

