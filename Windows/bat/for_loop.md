## for命令的开关（类似shell命令的选项）

##### for /f: 能实现win处理文本（类似linux的三剑客处理文本方式）：

1.命令格式：
（1）.FOR /F ["options"] %%i IN (file) DO command
（2）.FOR /F ["options"] %%i IN ("string") DO command--注意双引号
（3）.FOR /F ["options"] %%i IN ('command') DO command--注意单引号

2.参数说明：
file代表一个或多个文件，可以使用通配符。
string 代表字符串
command代表命令
["options"]选项有多个：

 eol=c           - 指定一个行注释字符，遇到c开头的行就忽略掉。
 skip=n          - 指定在文件开始时忽略的行数。
 delims=xxx      - 指定分隔符。默认是空格和TAB。

 tokens=x,y,m-n  - 指每行的哪一个符号被传递到每个迭代
                   的 for 本身。这会导致额外变量名称的分配。m-n
                   格式为一个范围。通过 nth 符号指定 mth。如果
                   符号字符串中的最后一个字符星号，
                   那么额外的变量将在最后一个符号解析之后
                   分配并接受行的保留文本。
 usebackq        - 1.把单引号字符串作为命令；2.允许中使用双引号扩起文件名称。