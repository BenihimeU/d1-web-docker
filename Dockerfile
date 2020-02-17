FROM fedora
MAINTAINER Jason
RUN yum install httpd -y
COPY web-docker.html /var/www/html/index.html
# we ahve to name inital page as index.html
EXPOSE 80 
# PORT format should as per the server <httpd, 80>,<Tomocat,8080>
ENTRYPOINT httpd -DFOREGROUND
# it will be starting server

