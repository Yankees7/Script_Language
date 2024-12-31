
## systemctl 命令所管理服务的目录
    /etc/systemd/system/multi-user.target.wants

## samba服务
    yum -y install samba smaba-common samba-client (如果仅挂载--指客户端安装cifs-utils即可)
    useradd sambauser # 创建专用于smb服务的用户，去使用系统root是最终无法使用的
    smbpasswd -a sambauser # 用户密码
    vim /etc/samba/smb.conf # 自行配置

## 由于随机字符不够导致的服务失败
    cat  /proc/sys/kernel/random/entropy_avail # 查看随机字符数
### 方案一
    apt install -y haveged    
    systemctl restart haveged
### 方案二
    yum install -y rng-tools
    systemctl restart rngd

    