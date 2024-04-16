FROM ubuntu:2204
LABEL sonnymba (mbasonny@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone htpps://github.com/diranetafen/static-website-example.git /var/www/html/  
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
 
