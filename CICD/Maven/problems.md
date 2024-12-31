# problems

###### [WARNING] The POM for xx:jar:1.0 is invalid, transitive dependencies (if any) will not be available, enable debug logging for more details
传递性依赖关系（如果有）将不可用，请启用调试日志记录以获取更多详细信息
>出现此告警，意味着：此项目的不会拉取xxjar所引入的间接依赖(或者叫传递性依赖)
>解决： 使用mvn -X 在此项目打开调试；主要排查依赖的xx.jar对应pom.xml里面存在dependencies.dependency.version is missing的情况；