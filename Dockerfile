FROM ubuntu:latest
MAINTAINER Aneesh
ENV DEBIAN_FRONTEND noninteractive
RUN apt update &&  apt install apache2 -y 
ADD web.tar.gz /var/www/html
#RUN useradd app
#RUN mkdir /apache
#RUN mkdir /logs
#RUN chown -R app:app /apache
#RUN chown -R app:app /logs
#user app
EXPOSE 80
WORKDIR /var/www/html
#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/sbin/apache2ctl","-D","FOREGROUND"]

## some just added to start auto build bla blabla 
######   something 
