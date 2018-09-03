FROM marceen/system
MAINTAINER Marcin Zaremba, marcin.zaremba@gmail.com

RUN yum install -y epel-release \
	&& yum install -y nginx \
	&& yum clean all

ADD nginx.conf /etc/nginx/
ADD default.conf /etc/nginx/conf.d/
ADD phpinfo.php /usr/share/nginx/html/

RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf

#CMD ["nginx"]

ENTRYPOINT nginx -g "daemon off;"
EXPOSE 80
EXPOSE 443
