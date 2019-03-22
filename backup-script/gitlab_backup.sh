#!/bin/bash
#Gitlab手动备份命令
/usr/bin/gitlab-rake gitlab:backup:create

sleep 3

#删除7天以前的备份文件
find /data/gitlab/backups/ -name '*.tar' -mtime +7 -exec rm -f {} \;
