FROM centos
LABEL MAINTAINER="jipara"
RUN yum install httpd -y
COPY ./index.html  /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
  
