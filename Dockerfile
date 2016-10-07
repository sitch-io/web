FROM nginx:alpine

MAINTAINER ashmastaflash

RUN apk update && apk add -y gettext

COPY sitch.conf /etc/sitch.conf

COPY runner.sh /runner.sh

CMD /runner.sh
