FROM debian:bullseye

RUN apt update -y
RUN apt install mariadb-server -y
RUN apt install mariadb-client -y 

COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir -p /var/run/mysqld
RUN mkdir -p /var/lib/mysql

EXPOSE 3306

COPY ./tools/mariadb.sh ./
RUN chmod 755 ./mariadb.sh

ENTRYPOINT ["bash", "./mariadb.sh"]