
- ***win清空指定目录：下面两种方法，都比右键删除快的多***
    ```bat
    1. for /f "delims=" %i in ('dir /B /AD d:\ws\workspace') do @rmdir /s /q %i --适用于该目录下全是目录情况下
    2. robocopy D:\nothing d:\ws\workspace /purge
    ```

- ***win处理文本（类似linux的三剑客处理文本方式）：***
for命令的/F开关
默认空格或tab作为分隔符的
    ```bat
    for /f %i in (d:\tool\123.txt) do @echo %i       ========打印第一列
    for /f "tokens=2" %i in (d:\tool\123.txt) do @echo %i  ========打印文件第二列
    for /f "tokens=1,2 delims=." %i in (d:\tool\123.txt) do @echo %i %j ========以点做分隔符，打印文件第一，第二列。但变量要新增,依次类推
    for /f "tokens=1,2 delims=;|. " %i in ("upgrade.22.0.0.B019") do @echo %i %j ========以分号 或竖线，或点，或空格作为分隔符情况
    for /f "delims=" %%i in ('git rev-parse HEAD') do set commit=%%i ======打印每一行（指定分隔符没有，则是打印每一行）
    for /f delims^=^"^ tokens^=10 %%i in ('type opensource_manifest.xml^|find "OpenSourceCenter/libxml2.git"') do set libxmltag=%%i  =======指定分隔符为",去掉外壳双引之后，就需要用到^来转义遇到的特殊符号。这是以"为分隔符，打印第10列
    ```
- ***win对字符串的截取：***
目标字符串=%源字符串:~起始值,截取长度%
    ```bat
    set str=abcdefghijklmnopqrstuvwxyz0123456789
    echo %str:~0,-5%    ===截取第一个到倒数第6字符
    echo %str:~-14,5%   ===从倒数第14个字符开始，截取5个字符：
    echo %str:~4,5%     ===从第四个字符开始截取5个字符
    echo %str:~0,5%     ===截取前5个字符
    echo %str:~-5%      ===截取最后5个字符
    ```
    * 字符串合并：%aa%%bb%
    * 字符串替换：%aa:替换字符=替换成的字符%

- ***echo换行：***
平时在linux利用echo -e "\n" 实现输出换行，那么利用windows原生echo命令如何输出换行呢？
    ```bat
    echo. & echo content
    ```



