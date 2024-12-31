#### 常用的jenkins插件说明

1. Rebuilder →提供rebuild按钮
2. Restricted Regstration(restricted-register) →提供Restrict where this project can be run: 就是可选择执行机
3. Clone Workspace SCM Plugin →提供把整个workspace打包给其他project解压当工作区使用
4. build-name-setter(build-name-setter) →提供set build name
5. Timestamper →提供console日志时间显示
6. Safe Restart Plugin →提供安全重启按钮
7. Localization:Chinese(Simplified)，depends：Localization Support Plugin →提供本地jenkins汉化
8. ssh-agent(ssh-slaves)→提供节点启动ssh方式
9. jenkins-multijob-plugin →提供多job编排
10. Git→提供代码下载
11. mutiple-scms→单project多代码库下载

#### 时区不一致导致的定时任务不执行
1. jenkins服务的时区
    系统配置→系统信息→user.timezone: Etc/UTC
2. jenkins所在机器的时区
    Date Thu Jun 2 10:15:27 CST 2022
1,2不统一时区，定时有偏差
解决：
修改jenkins服务时区或定时任务声明(TZ=Aisa/Shanghai)
