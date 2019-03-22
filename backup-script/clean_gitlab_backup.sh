#/bin/bash
#删除30天以前的gitlab同步备份文件
find /opt/rsync_backups/gitlab_backup/backups -name '*.tar' -mtime +30 -exec rm -f {} \;
