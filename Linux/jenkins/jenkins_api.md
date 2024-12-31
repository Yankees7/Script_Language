# 通过账号密码方式

## 禁用job: xxx
 curl -X POST -u root:yangjing@123 http://11.11.11.11:8080/jenkins/job/xxx/disable

 ## 激活job: xxx
 curl -X POST -u root:yangjing@123 http://11.11.11.11:8080/jenkins/job/xxx/enable