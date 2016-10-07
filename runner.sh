# This runs all the things
cat /etc/sitch.conf | envsubst > /etc/nginx/conf.d/default.conf

/usr/sbin/nginx -g "daemon off;"
