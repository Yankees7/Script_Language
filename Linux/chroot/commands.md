# Chroot交叉编译
一切皆文件是Linux系统的核心概念和设计原则

## chroot命令
yum -y install coreutils

## Problems
- Error, do this: mount -t proc proc /proc
    1. mkdir /proc & mount -t proc proc /proc
    2. mdkdir /proc & echo "proc /proc proc defaults" >> /etc/fstab && mount -defaults

- chroot /root/UP_BUILD_ROOT/${1} bash 命令这种形式，属于**非交互式非登录**，不会加载任何环境配置文件
- ssh username@host command 一样，属于非交互非登录式shell,不会加载任何环境配置文件
    1. bash --login
    2. export BASH_ENV=/etc/profile