FROM ahusking/ubuntu-base

MAINTAINER Andrew Husking (andrew@husking.id.au)
RUN export DEBIAN_FRONTEND=noninteractive
RUN debconf-set-selections <<< 'mariadb-server-10.0 mysql-server/root_password password default'
RUN debconf-set-selections <<< 'mariadb-server-10.0 mysql-server/root_password_again password default'

RUN apt-get update
RUN apt-get -y -q install curl apache2 dnsutils wget vim mariadb-server php-cli php-common php-gd php-mcrypt php-mysql


COPY source/ /root/
RUN tar xvfz /root/phpauction.tgz -C /var/www/html
RUN mysql -uroot -pdefault -e "CREATE USER 'phpauction'@'localhost' IDENTIFIED BY 'magnifire'"
RUN mysql -uroot -pdefault -e "GRANT ALL ON *.* TO 'phpauction'@'localhost';"
RUN update-rc.d apache2 defaults
RUN update-rc.d mysql defaults
RUN service apache2 restart
RUN service mysql restart

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV TZ=Australia/Canberra

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD /sbin/init
EXPOSE 80
