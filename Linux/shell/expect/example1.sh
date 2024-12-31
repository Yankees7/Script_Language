#!/bin/bash
# 记得一定要： expect eof收尾
# 从sehll中执行expect命令
ip=$1  
user=$2 
password=$3 
expect <<EOF  
    set timeout 10 
    spawn ssh $user@$ip 
    expect { 
        "yes/no" { send "yes\n";exp_continue } 
        "password" { send "$password\n" }
    } 
    expect "]#" { send "useradd hehe\n" } 
    expect "]#" { send "echo rrr|passwd --stdin hehe\n" } 
    expect "]#" { send "exit\n" } expect eof 
EOF


# 从sehll中-c执行expect命令，但识别不了shell中的变量，只能识别expect -c(expect程序)里面的set的变量,很局限不能传参只能是set定义的常量
# ip=$1  
# user=$2 
# password=$3 
expect -c '  
    set timeout 10
    set ip=192.168.4.10
    set user=root
    set password=123 
    spawn ssh $user@$ip 
    expect { 
        "yes/no" { send "yes\n";exp_continue } 
        "password" { send "$password\n" }
    } 
    expect "]#" { send "useradd hehe\n" } 
    expect "]#" { send "echo rrr|passwd --stdin hehe\n" } 
    expect "]#" { send "exit\n" } expect eof
'

#