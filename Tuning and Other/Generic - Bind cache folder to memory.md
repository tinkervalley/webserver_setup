## Bind Cache Folder To Memory

### This can be useful for Wordpress WP Super Cache plugin. Here is an example. 

Run the command:

```
sudo nano /etc/fstab
```

Add the following single line:

```
tmpfs /var/www/html/yourwordpressdir/wp-content/cache tmpfs nosuid,nodev,noatime,user,uid=33,gid=33 0 0
```