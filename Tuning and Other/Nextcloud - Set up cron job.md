# Nextcloud Cron job

Open the crontab editor as www-data user

```
sudo crontab -u www-data -e
```

Add the following line. It is the nextcloud cron job every 5 minutes.

```
*/5  *  *  *  * php -f /var/www/html/nextcloud/cron.php
```

If you do not have the apc.enable_cli=1 added to your apcu.ini file, then you will have to append this to the cronjob in order for it to run.

```
 --define apc.enable_cli=1
```