#!/bin/sh

source /etc/profile
retDesc=`ps -ef | grep "toWechat" | grep -v grep`
retCode=$?
if [ ${retCode} -ne 0 ]; 
    then
    echo "`date` restart" >> /root/wechatlisten.log 
    nohup python3 /root/toWechat.py & 
else
    echo "server on"
fi
