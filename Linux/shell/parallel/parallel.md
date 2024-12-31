

# & 置于后台

```shell
for i in $envs[@]
do
    {
        shellscript_parallel
    }&

done


# 等待后台子进程结束
wait
echo "并发执行完毕"
```

# nohup .. & 置于后台
nohup后台，即使退出终端（退出用户），后台依然执行(但注意退出用户要exit正常退出)
```shell
nohup ./test.sh &

nohup ./test > myout.txt 2>&1 &
```


