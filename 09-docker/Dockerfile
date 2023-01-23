FROM debian
RUN apt update 
RUN apt install -y apache2
RUN apt install -y php7.4
RUN rm /var/www/html/index.html
COPY index.php /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND