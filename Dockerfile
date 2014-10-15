FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx supervisor

VOLUME /etc/nginx

ADD scripts/nginx.conf /etc/supervisor/conf.d/
ADD scripts/start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
