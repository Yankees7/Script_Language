### git clone时：fatal: Unable to find remote helper for 'https'
安装 curl 开发库（curl-devel）（或者叫：libcurl-devel）
安装 expat 库（expat-devel）
重新编译：
下载 Git 源代码并使用以下方法进行构建：
./configure --prefix=/usr --with-curl --with-expat
还尝试将配置指向 curl 二进制文件（./configure --prefix=/usr --with-curl=/usr/bin/curl)

### git clone代码报文件名过长问题解决
    打开git Bash窗口执行
    git config --global core.longpaths true

