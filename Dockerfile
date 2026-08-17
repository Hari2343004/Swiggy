FROM ngnix:apine
COPY index.html /usr/var/nginx/html/index.html
EXPOSE 80