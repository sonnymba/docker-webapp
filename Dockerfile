FROM ubuntu:2204
LABEL sonnymba (mbasonny@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone htpps://github.com/sonnymba/static-website-example.git /var/www/html/ 
EXPOSE 80 
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
 
