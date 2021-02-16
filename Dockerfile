FROM alpine:latest

LABEL "VERSION"="v1.0"

RUN apk --no-cache upgrade
RUN apk add --no-cache apache2
RUN mkdir /run/apache2

EXPOSE 80 443

CMD ["-D","FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
