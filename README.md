# docker-rpi-transmission
Dockerfile for Tansmission installation on Raspberry Pi 

docker run -d -p 9091:9091 --name=[name] -v [path to data]:/data

docker run -d -p 9091:9091 --name=Transmission -v /mnt/samba/seagate/Torrents/Downloads:/data firecube/rpi-transmission
