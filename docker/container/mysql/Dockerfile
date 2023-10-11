
# MySQL mit Scripts für die Administration

FROM mysql/mysql-server:latest

LABEL maintainer = "werner.damboeck@letto.at"
LABEL description = "MySQL-server"

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC
ENV MYSQL_ROOT_PASSWORD=changeme

ADD ./scripts/* ./scripts/
RUN chmod 755 ./scripts/*.sh
RUN echo "sql_mode=\"STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION\"" >>/etc/my.cnf
RUN echo "default-time-zone='SYSTEM'" >>/etc/my.cnf
RUN echo "max_connections=500" >>/etc/my.cnf

RUN ln -s /scripts/help.sh /bin/help
RUN ln -s /scripts/import-database.sh /bin/import
RUN ln -s /scripts/export-database.sh /bin/export
RUN ln -s /scripts/create-db-user.sh  /bin/cu
RUN ln -s /scripts/create-db.sh  /bin/cdb
RUN ln -s /scripts/recreate-db.sh  /bin/rcdb
RUN ln -s /scripts/run-sql.sh  /bin/run
RUN ln -s /scripts/create-db-user_all_databases.sh  /bin/cua
RUN ln -s /scripts/init-db.sh  /bin/initialize

EXPOSE 3306
