## curl
curl 访问http和ftp等协议

#### Api调用 主要选项
-s 不显示curl进度
-k 忽略https证书
-i 响应信息加上头部
-X 等于--request 指定http请求方法：默认GET，另POST， PUT，DELETE，TRACE
-H 等于--header 请求头
-d 等于--data 请求体

#### 下载文件
curl -k -O 地址/文件
curl -k -o 新文件 地址/文件
- 类比wget：wget --no-check-certificate 地址/文件




