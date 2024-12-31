#!/bin/bash

: << INSTRUCTION
条件测试：其实就是条件表达式而已
格式：[ 表达式 ] 或 [[ 表达式 ]]
INSTRUCTION

: << IN
进阶：可包含特殊符号的双中括号,字符串包含关系用"=~"
格式：[[ "$A" =~ $B ]],A字符串包含字符串B 
IN
A="Hello World!"
if [[ "$A" =~ World ]]
then
    echo "oh yeah!"
fi


# &&与 ||或 
# [[ 条件1 && 条件2 || 条件3 ]] 等于[ 条件1 -a 条件2 -o 条件3 ]


