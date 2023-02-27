#!/bin/bash

string=01234567890abcdefgh
echo ${string:7} # 输出：7890abcdefgh
echo ${string:7:0} # 输出空串
echo ${string:7:2} # 输出：78
echo ${string:7:-2} # 输出：7890abcdef
echo ${string: -7} # 输出：bcdefgh
echo ${string: -7:0} # 输出空串
echo ${string: -7:2} # 输出：bc
echo ${string: -7:-2} # 输出：bcdef