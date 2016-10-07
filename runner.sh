cat /etc/sitch.conf | envsubst > /etc/nginx/conf.d/default.conf

nginx -g daemon off;
