#### tomcat开启http下载
    vim conf/web.xml
    <init-param>
      <param-name>listings</param-name>
      <param-value>true</param-value>
    </init-param>
    注意将原来的false改为true




# wget下载命令（适用于win和linux）
--no-check--certificate 不检查证书即忽略https校验

`wget --no-check-certificate https://centos.org/centos/8/extras/x86_64/os/Packages/centos-gpg-keys-8-3.el8.noarch.rpm`

## wget下载http整个文件夹及子目录
-r 指定递归下载

-p 下载所有用于显示HTML页面的图片之类的元素

-np 不追溯至父目录（这里应该说的是网址前缀） 

-k 让下载得到的HTML或css中的链接指向本地文件

--restrict-file-names=nocontrol 解决文件乱码

这个会下载路径衍生到cenos.org开始：
`wget --http-user=username --http-passwd=userpass --no-check-certificate --restrict-file-names=nocontrol -r -p -np -k https://centos.org/centos/8/extras/x86_64/os/Packages/`


