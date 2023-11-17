# Database Backup Schedule
The cron job will be running as root, and the mysqldump command will require the username and password to be stored in the following file:
```
/root/.my.cnf

[client]
user=root
password=sqlrootpassword
```
Here is the cron job. It will create a folder in /var/www/html called databasebackups, and create a folder within that every day at 7PM containing each database backup. You can add the cron job with this command:
```
sudo crontab -e
```
```
0 19 * * * backup_dir="/var/www/html/databasebackups/$(date +\%Y-\%m-\%d_\%H-\%M)" && mkdir -p $backup_dir && for db in $(mysql -e 'show databases' -s --skip-column-names); do mysqldump --databases $db > "$backup_dir/$db.sql"; done && find /var/www/html/databasebackups/* -type d -mtime +5 -exec rm -r {} +
```
