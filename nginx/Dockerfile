FROM marceen/system
MAINTAINER Marcin Zaremba, marcin.zaremba@gmail.com

RUN yum install -y epel-release \
	&& yum install -y nginx \
	&& yum clean all

ENTRYPOINT nginx -g "daemon off;"
EXPOSE 80
