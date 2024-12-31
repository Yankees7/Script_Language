# xargs命令
- 概念：将管道或标准输入（stdin）数据转换成命令行参数，也能够从文件的输出中读取数据
- 作用：xargs读取输入数据（文本）重新格式化（转为命令行参数）输出
- 默认参数们之间用空格（换行）作为分隔符，默认一次性使用全部的参数们（可-n 指定每一次使用的参数个数）

### 多行转单行
cat test.txt<br>
a b c d e f g<br>
h i j k l m n<br>
o p q<br>
r s t<br>
u v w x y z<br>

cat test.txt | xargs<br>
a b c d e f g h i j k l m n o p q r s t u v w x y z<br>

-n 控制每一次输出几个参数

-d 指定参数们之间的分隔符

-i 或者是-I，这得看linux支持了，使用 -I 指定一个替换字符串 {}，这个字符串在 xargs 扩展时会被替换掉，
        将xargs的每项名称，一般是按一行一行赋值给 {}，可以用 {} 代替。

cat test.txt | xargs -I {} echo 123{}<br>
123a b c d e f g<br>
123h i j k l m n<br>
123o p q<br>
123r s t<br>
123u v w x y z<br>

## 示例一：查找所有的 jpg 文件，并且压缩它们
find . -type f -name "*.jpg" -print | xargs tar -czvf images.tar.gz

## 示例2：找到所有的bat文件，把他们换化为dos
find Code -name "*.bat" |xargs unix2dos