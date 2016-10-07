# Sitch front-facing web server
## Serves up feed files from a shared volume

You just need to start it with 443 exposed and the SERVER_NAME env var set.
SERVER_NAME is the FQDN of your certificate.  Also, you'll need to mount up your
letsencrypt dir.  Do the thing like this:

        docker run -d \
        -p 443:443 \
        -e SERVER_NAME=$SERVER_NAME \
        -v /etc/letsencrypt:/letsencrypt \
        sitch
