#!/bin/bash
# 正确查找并终止Java进程
PID=`ps -e -o pid,cmd | grep "java -jar" | grep -v grep | awk '{print $1}'`
if [ -n $PID ]
then
    kill -9 $PID
fi
# 启动新进程（建议日志重定向到文件而非/dev/null）
nohup java -jar /opt/app.jar > /dev/null 2> /dev/null < /dev/null &
exit 0