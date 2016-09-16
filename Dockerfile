FROM centos:latest

MAINTAINER Marcones Nunes da Silva "marcones.ns@gmail.com"

RUN yum -y install httpd && yum clean all && systemctl enable httpd

ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

# ADD index.html /var/www/html/index.html

EXPOSE 80 443

CMD ["/run-httpd.sh"]
