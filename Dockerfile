FROM resin/rpi-raspbian:wheezy 
MAINTAINER Simon Brushett <simon@firecbue.co.uk>

RUN apt-get update && apt-get install transmission-daemon
    
VOLUME /config
VOLUME /data

EXPOSE 9091

COPY settings.json /config/settings.json

CMD ["/usr/bin/transmission-daemon", "--config-dir /config/"]