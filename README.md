# Sitch front-facing web server
## Serves up feed files from a shared volume

You just need to start it with 443 and 8443 exposed, and the SERVER_NAME and KIBANA_URL env vars set.
SERVER_NAME is the FQDN of your certificate.  KIBANA_URL is the URL of your Kibana instance.  The feed is going to be served on 443, and Kibana on 8443.  Consider making 8443 available only over VPN.
Also, you'll need to mount up your letsencrypt dir.  And the content you're serving.  Do the thing like this:

        docker run -d \
        -p 443:443 \
        -p 8443:8443 \
        -e SERVER_NAME=$SERVER_NAME \
        -e KIBANA_URL=$KIBANA_URL \
        -v /etc/letsencrypt:/letsencrypt \
        -v /var/www/:/usr/share/nginx/html/
        sitch/web
