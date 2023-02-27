#!/bin/bash

func () 
{
    # 分号分隔命令
    echo "$1";echo "$2"

    # 换行分隔命令
    echo "$3"
    echo "$4"

    # &分隔
    echo "$5"& echo "$6"

    # 换行也可以和&、;混合使用
    echo "$7";
    echo "$8"&
    echo "$9"

    echo $FUNCNAME

}

func arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9


