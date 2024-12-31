

    expect [选项] [ -c cmds ] [ [ -[f|b] ] cmdfile ] [ args ] 

    选项 

         -c：从命令行执行expect脚本，默认expect是交互地执行的   

               示例：expect -c 'expect "\n" {send "pressed enter\n"}' 

         -d：输出调试信息   

               示例：expect  -d ssh.exp

          expect中的相关命令 

                spawn：启动新的进程 

                send：向进程发送字符串 

                expect：从进程接收字符串 

                interact：允许用户交互

                exp_continue  匹配多个字符串时在执行动作后加此命令 

 

     expect最常用的语法(tcl语言:模式-动作) 

        单一分支模式的语法： 

              expect "hi" { send "You said hi\n" }           匹配到 hi 后,会输出"you said hi"，并换行

        多分支模式的语法: 

              expect "hi" { send "You said hi\n" } \ "hehe" { send “Hehe yourself\n" } \ "bye" { send "Goodbye\n" } 

        匹配 hi, hehe, bye 中的任意字符串时, 发送相应字符串。等同于:

              expect { "hi" { send "You said hi\n" } "hehe" { send "Hehe yourself\n" } "bye" { send "Goodbye\n" } } 