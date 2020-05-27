FROM devopsedu/webapp
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND
