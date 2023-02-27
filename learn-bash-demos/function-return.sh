#!/bin/bash

func () 
{
    return 100
}

func
echo $? # 输出：100