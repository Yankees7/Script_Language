# 环境变量初始化与对应文件的生效顺序
登录linux系统并启动一个bash shell时，默认bash会在若干个文件（可统称系统环境文件）中查找环境变量的设置

下面会介绍运行shell的2中方式

## 登录shell
账号密码 → /etc/profile(全局文件G1) → /etc/profile.d/(全局脚本目录F1) → ~/.bash_profile(用户文件U1) → ~/.bashrc(用户文件U2) → /etc/bashrc(全局文件G2)

## 非登录shell
不需要输入密码的登录及远程ssh -> ~/.bashrc(用户文件U2) → /etc/bashrc(全局文件G2)<br>

例如：
- bash中执行bash命令，启动的子进程bash
- ssh远程


