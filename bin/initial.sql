use mysql;
set password=PASSWORD('iephong');
flush privileges;
set character_set_server=utf8;
set character_set_database=utf8;
create database kad;
CREATE USER kad IDENTIFIED BY 'Haoyouying1@#';
commit;
GRANT ALL ON kad.* TO kad;



