
# windows下始终保持提交的文件的末尾换行符为"\n"（LF）
git config --global core.autocrlf=true

# 证书认证失败的
git config --global http.sslVerify false

# 公钥配置过程：
ssh-keygen -t rsa -C "yangjing@163.com"
cat id_rsa.pub

# 配置域名和邮箱
git config --global user.name yangjing@gmail
git config --global user.email yangjing@163.com

# 更新公钥：
ssh-keygen -R 7.212.125.201（刷新）
ssh-copy-id root@10.251.34.106

场景：（分支|merge）（分支|merge）
git merge --abort 取消合并
git cherry-pick --abort 取消cherry

场景：查看历史commits
git log --oneline | head -n 3
git log --oneline    短commitid
git log --pretty=oneline 长commitid

场景：fork仓库与上游仓库同步
git remove -v 查看绑定的远程仓库,没有上游仓库
git remote add upstream 远程上游仓库url
git remove -v 查看绑定的远程仓库,上游仓库有了

git fetch upstream 拉取上游仓库

git reset --hard upstream/master  使用上游master覆盖fork仓的master
git pull upstream/master 拉取上游合并本地fork仓库

场景：删除远程分支
git push origin --delete [branch_name]    删除远程分支
git branch -d  [branch_name]  删除本地分支 ，会在删除前检查merge状态
git branch -D [branch_name] 删除本地分支

# https免密下载代码仓
1. 保存输过的git用户和密码：
git config --global credential.helper store（适用：https情形，避免后续拉取还需要输入用户和密码）
2. git clone https某地址，输入用户名和密码
3. 自动会生成/home/user/.git-credential，包含用户名密码和匹配的域名地址
4. 再次git clone https某地址免密
5. 出现remote: HTTP Basic: Access denied 核对 git config --global user.name 是否与用户 密码对应一致

# https取消免密和清除密码
1. 查看本地安全策略（git config --list也可以查看，实际上这个命令可以查看所有了设置了）
git config credential.helper
2. 取消本地缓存用户名和密码的安全策略
git config --global credential.helper wincred
3. 清除缓存的用户名和密码
git credential-manager uninstall

git config和带--global、--system的区别
git config -e
git config -e --global
git config -e --system
有没有想过，如果三种配置里面都设置了某个参数，那么最后生效的是哪种呢？它们之前的优先级为（由高到低）：git config > git config --global > git config --system。