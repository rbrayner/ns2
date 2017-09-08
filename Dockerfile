FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y && apt-get install -y bind9 vim supervisor

RUN mkdir -p /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]

EXPOSE 53/udp 53/tcp
