#!/bin/bash

func () 
{
    echo $0 # ./function-args.sh
    echo $1 # arg1
    echo ${10} # arg10
    echo $# # arg10
    echo ${#} # arg10


}

func arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10
