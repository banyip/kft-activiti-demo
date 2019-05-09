sudo apt-get install -y mysql-server
sudo mysql -uroot < initial.sql 
INSTALL_DIR=`pwd`
sudo mkdir -p /mnt/dav
sudo apt install -y davfs2
sudo mount -t davfs http://202.105.18.226:18082/seafdav/ /mnt/dav
sudo echo "0 5 * * * $INSTALL_DIR/bin/backupmysql.sh >>  /tmp/tmp.txt >> /var/spool/cron/root
