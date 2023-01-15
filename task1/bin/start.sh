service mysql start
sleep 3
mysql -u root < ./db/schema.v0.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234'; FLUSH PRIVILEGES;" | mysql -u root
echo "ALTER team 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234'; FLUSH PRIVILEGES;" | mysql -u root


oncall-dev /app/oncall/configs/config.yaml