#!/bin/bash

# 一个基本的循环
# number小于5的时候循环输出number的值
echo 'while循环'
number=0
while [ "$number" -lt 5 ]; do
  echo "Number = $number"
  number=$((number + 1))
done
echo "Final: $number"
# 输出：
# while循环
# Number = 0
# Number = 1
# Number = 2
# Number = 3
# Number = 4
# Final: 5


# 直到number大于5，循环输出number的值
echo 'until循环'
number=0
until [ "$number" -gt 5 ]; do
  echo "Number = $number"
  number=$((number + 1))
done
echo "Final: $number"
# 输出：
# until循环
# Number = 0
# Number = 1
# Number = 2
# Number = 3
# Number = 4
# Number = 5
# Final: 6

# 对一系列字符串进行循环
for var in 11 22 33; do
    echo "$var"
done
# 输出
# 11
# 22
# 33

echo '省略 in words ...'
# 执行命令为：./learn-bash-demos/looping-constructs.sh 11 22 33
for i; do
  echo "$i"
done
# 输出
# 11
# 22
# 33
echo '等同于'
for i in "$@"; do
  echo "$i"
done
# 输出
# 11
# 22
# 33

test() {
    return 1
}
for var in 11 22 33; do
    test
done
echo $?
# 输出：1

# 循环0次，没有命令被执行
for var in ; do
    test
done
echo $?
# 输出：0


echo 'for循环'
for (( i=0; i<5; i=i+1 )); do
  echo $i
done
# 输出
# 0
# 1
# 2
# 3
# 4

test() {
    return "$1"
}
for (( i=0; i<5; i=i+1 )); do
  test $i
done
echo "return $?" # 输出：return 4
