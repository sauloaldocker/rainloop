#https://registry.hub.docker.com/u/jprjr/rainloop/

docker stop rainloop
docker rm   rainloop

SRC=$HOME/data/docker/rainloop
SRC_WEB=$SRC/web
SRC_DATA=$SRC/data
SRC_WWW=$SRC/www
SRC_SRV=$SRC/srv

#docker run -d -v $SRC_DATA:/var/lib/rainloop/data -v $SRC_WEB:/usr/share/webapps/rainloop -p 127.0.1.1:9900:9000 --name rainloop jprjr/rainloop

#docker run -d --name rainloop -h rainloop -v $SRC_DATA:/var/lib/rainloop/data -v $SRC_WEB:/usr/share/webapps/rainloop -p 127.0.1.1:9900:80 ahmet2mir/rainloop
#docker run -d --name rainloop -h rainloop -p 127.0.1.1:9900:80 ahmet2mir/rainloop /usr/sbin/runsvdir-start
#docker run -it --name rainloop -p 127.0.1.1:9900:80 ahmet2mir/rainloop /usr/sbin/runsvdir-start

VS="-v $SRC_DATA:/var/lib/rainloop/data "
VS="-v $SRC_WEB:/usr/share/webapps/rainloop $VS "
VS="-v $SRC_WWW:/var/www/rainloop/data $VS "
VS="-v $SRC_SRV:/srv/www/rainloop/data $VS "

docker run -d --name rainloop -h rainloop $VS -p 127.0.1.1:9900:80 sauloal/rainloop

#docker run -d --name rainloop -p 127.0.1.1:9990:80 -e “MAILDOMAIN=mail.mydomain.tld” -e “MAILADMIN=webmaster@mydomain.tld” paulbrennan/rainloop
#-v /data:/data 
