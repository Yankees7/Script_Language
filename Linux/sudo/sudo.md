# 使用sudo执行时报错找不到环境变量
执行sudo时默认读取就是 缺省PATH：/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
如果添加有其他PATH，这里会报错找不到
## 解决方法一
    sudo sed -i 's/env_reset/!env_reset/' /etc/sudoers 
## 解决方法二
    echo "alias sudo='sudo env PATH=\$PATH'" >> ~/.bashrc # sudo默认读取就是默认path，此处修改使sudo使用时变量生效