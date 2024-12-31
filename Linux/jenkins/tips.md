# 修改workspace名称后缀
启动jenkins时指定JAVA_OPTS(java选项)<br>
```
JAVA_OPTS=-Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -Dhudson.slaves.WorkspaceList=_
-Dhudson.slaves.WorkspaceList=_  并发构建时为了区分workspace名称，会在名称+@数字来加以区分。现在把@符号改为改为下划线来区分
```
