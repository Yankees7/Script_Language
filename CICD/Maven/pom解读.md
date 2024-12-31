# pom配置

##### 1.<dependencyManagement> 依赖的声明
标签里声明关于依赖包配置的依赖包版本version；对后续项目继承该version，并对该项目的直接依赖生效和间接依赖都生效；


如果更新版本号一个文件一个文件的去改太麻烦，可以用以下命令一次性更新版本号：
>mvn versions:set -DnewVersion=0.0.2-SNAPSHOT
>mvn versions:update-child-modules

