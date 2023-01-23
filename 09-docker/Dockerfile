FROM debian
RUN apt update && apt install -y apache2 && apt install -y php7.4
RUN rm /var/www/html/index.html
COPY index.php /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND