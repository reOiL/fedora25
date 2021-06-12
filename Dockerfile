FROM fedora:25
LABEL maintainer "reOiL imidg3001@yandex.ru"

# TODO: This isn't work, i think unable to find packages because fedora 25 is too old
# RUN yum -y install httpd php mysql mysql-server php-mysql

COPY ./ent.sh /

RUN chmod +x /ent.sh

ENTRYPOINT ["/ent.sh"]

