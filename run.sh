#https://registry.hub.docker.com/u/jprjr/rainloop/

SRC=$HOME/data/docker/rainloop
SRC_WEB=$SRC/web
SRC_DATA=$SRC/data


docker run -d -v $SRC_DATA:/var/lib/rainloop/data -v $SRC_WEB:/usr/share/webapps/rainloop -p 127.0.1.1:9900:9000 --name rainloop jprjr/rainloop
