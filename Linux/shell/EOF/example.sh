#!/bin/bash

# 注意书写：cat空格<<EOF >文件名
# 1.至于<<和EOF中间空不空都无所谓。原因是命令要识别选项参数，<<紧挨选项和参数，混淆所以识别不了
# 2.一定要是双小于符号：<< 不要一个小于

# 加入文本内容并新建文件（或覆盖文件）
cat << EOF >test.sh 
123123123
3452354345
asdfasdfs
EOF

# 向文件里追加文本内容
cat << EOF >test.sh 
123123123
3452354345
asdfasdfs
EOF

# EOF可以自定义，不一定非得EOF标志
cat << zhangsan > haha.txt
ggggggg
4444444
6666666
zhangsan

# 另外有点交互式的味道（<<EOF毕竟是追加输入）
rm -r /root/123 <<EOF
yes
EOF

补充: 用EOF做注释
<<INSTRUCTION
1.
2.
2.
INSTRUCTION

