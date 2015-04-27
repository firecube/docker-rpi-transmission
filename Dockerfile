FROM resin/rpi-raspbian:wheezy 
MAINTAINER Simon Brushett <simon@firecbue.co.uk>

RUN apt-get update && apt-get install transmission-daemon -y

VOLUME /data

EXPOSE 9091

CMD ["/usr/bin/transmission-daemon", "--config-dir /config", "--download-dir /data", "--no-incomplete-dir"]
