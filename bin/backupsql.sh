find /mnt/dav/databasebackup -mtime +15 -name "kaddump*.sql" -exec rm -f {} \;
filedate=`date +%Y%m%d%H%M%S`
mysqldump -u kad -p Haoyouying1@# kad > /mnt/dav/databasebackup/kaddump$filedate.sql
