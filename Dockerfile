FROM alpine:latest

LABEL VERSION v1.0

RUN apk --no-cache upgrade
RUN apk add --no-cache apache2 php7 php7-apache2
RUN rm -rf /var/www/localhost/htdocs/index.html

COPY data/index.php /var/www/localhost/htdocs/

EXPOSE 80 443

CMD ["-D","FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
