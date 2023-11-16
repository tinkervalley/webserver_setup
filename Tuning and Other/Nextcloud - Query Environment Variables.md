# Enable PHP Environment Variables

If you get this message in Nextcloud:

> - PHP does not seem to be setup properly to query system environment variables. The test with getenv("PATH") only returns an empty response. Please check the [__installation documentation ↗__](https://docs.nextcloud.com/server/27/go.php?to=admin-php-fpm) for PHP configuration notes and the PHP configuration of your server, especially when using php-fpm.

Browse to the following file:

```
/etc/php/8.1/fpm/pool.d/www.conf
```

Uncomment the following lines:

```
env[HOSTNAME] = $HOSTNAME
env[PATH] = /usr/local/bin:/usr/bin:/bin
env[TMP] = /tmp
env[TMPDIR] = /tmp
env[TEMP] = /tmp
```