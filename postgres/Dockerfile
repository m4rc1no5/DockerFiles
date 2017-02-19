FROM marceen/system
MAINTAINER Marcin Zaremba, marcin.zaremba@bm.pl

ENV INSTALL_DIR /data
RUN mkdir -m a=rwx ${INSTALL_DIR}
ENV PGDATA /data
RUN yum update -y \
  && yum install -y https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-2.noarch.rpm \
  && yum install -y postgresql95-server postgresql95-contrib  \
  && yum clean all
RUN chown postgres ${INSTALL_DIR}
USER postgres
RUN /usr/pgsql-9.5/bin/initdb -E UTF8 -D ${INSTALL_DIR}
RUN echo "listen_addresses='*'" >> ${INSTALL_DIR}/postgresql.conf &&\
    echo "host all  all  0.0.0.0/0  md5" >> ${INSTALL_DIR}/pg_hba.conf
RUN /usr/pgsql-9.5/bin/pg_ctl -D /data start -w &&\
    /usr/pgsql-9.5/bin/psql --command "CREATE USER marceen WITH SUPERUSER PASSWORD 'marceen';"

EXPOSE 5432
CMD ["/usr/pgsql-9.5/bin/postgres", "-D", "/data", "-c", "config_file=/data/postgresql.conf"]