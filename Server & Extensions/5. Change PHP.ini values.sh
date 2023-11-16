#Ask for inputs

echo "Memory Limit: (default 128M)"
read memorylimit

echo "Max Execution Time: (default 30)"
read maxextime

echo "Post Max Size: (default 2M)"
read postmaxsize

echo "Upload Max Size: (default 2M)"
read uploadsize


sed -i "s/memory_limit =/;memory_limit =/" /etc/php/8.1/fpm/php.ini
sed -i "s/max_execution_time =/;max_execution_time =/" /etc/php/8.1/fpm/php.ini
sed -i "s/post_max_size =/;post_max_size =/" /etc/php/8.1/fpm/php.ini
sed -i "s/upload_max_filesize =/;upload_max_filesize =/" /etc/php/8.1/fpm/php.ini
echo memory_limit = $memorylimit >> /etc/php/8.1/fpm/php.ini
echo max_execution_time = $maxextime >> /etc/php/8.1/fpm/php.ini
echo post_max_size = $postmaxsize >> /etc/php/8.1/fpm/php.ini
echo upload_max_filesize = $uploadsize >> /etc/php/8.1/fpm/php.ini
systemctl restart php8.1-fpm
echo Values Updated!