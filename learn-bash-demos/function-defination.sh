#!/bin/bash



function func() {
    echo "$1"
}

function func 
{
    echo "$1"
}

func () 
{
    # 输出所有参数
    echo "$@" # 输出：arg1 arg2 arg3
}

func arg1 arg2 arg3


