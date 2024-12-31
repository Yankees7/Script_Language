### windows要始终保持入库文件末尾换行符为LF(unix格式)
    git config --global core.autocrlf true (这也是git安装后的默认配置,签出自动转换和提交转LF)
    git config --global core.autocrlf input (Linux使用此配置这也是git安装后的默认配置;签出不转换;提交转LF)
    git config --global core.autocrlf false (适用仅运行在windows上的项目,签出和提交都保留文件原样)

### windows启用对git文件大小写敏感(可以启用全局--global)
    git config core.ignorecase 查看;不出意外返回true
    git config core.ignorecase false（false表示对大小写敏感）

## git pull时error: invalid path 'Linux/chroot   '
Git在windows下默认开启了NTFS保护机制，导致包含不满足NFTS文件名的文件无法被成功拉取，且无法切换到这些不满足NTFS文件名规范的文件夹中<br>
一般在linux上进行代码开发工作进行了错误不规范的命名，windows时拉取代码会报错无效路径，就是文件命名问题

    1. 关闭NTFS保护机制：git config core.protectNTFS false
    2. git pull(checkout)时不符合NTFS的文件不会被检出
    3. 不符合NTFS的文件会在工作区显示已删除该文件
    4. 重新命名规范文件
    5. git add ./git commit 重新提交完成修正

## https免密配置方法
git config --global credential.helper store

    对应 .gitconfig
    [credential]
        helper = store