# /dev/xx 设备文件

    mknod DEVNAME {b|c} MAJOR MINOR
    - MAJOR 主设备号
    - MINOR 次设备号
     一个设备号由主设备号和次设备号组成。<br>
     主设备号标示某一种类的设备，次设备号用来区分同一类型的设备。<br>
     linux操作系统中为设备文件编号分配了32位无符号整数，其中前12位是主设备号，后20位为次设备号，所以在向系统申请设备文件时主设备号不好超过4095，次设备号不好超过2^20 -1  

- 创建字符设备文件：/dev/null
    mknod -m 666 /dev/null c 1 3
- 创建字符设备文件：/dev/random
    mknod -m 666 c 1 8
- 创建字符设备文件：/dev/urandom
    mknod -m 666 c 1 9

