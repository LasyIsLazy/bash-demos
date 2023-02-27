#!/bin/bash

arr=(x y z)

# 输出：
# key: 0
# key: 1
# key: 2
for var in ${!arr[@]}; do
    echo "key: $var"
done

# 输出：
# key: 0
# key: 1
# key: 2
for var in ${!arr[*]}; do
    echo "key: $var"
done

# 输出：
# key: 0
# key: 1
# key: 2
for var in "${!arr[@]}"; do
    echo "key: $var"
done

# 输出：
# key: 0 1 2
for var in "${!arr[*]}"; do
    echo "key: $var"
done
