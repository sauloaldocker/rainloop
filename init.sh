#https://registry.hub.docker.com/u/jprjr/rainloop/

SRC=$HOME/data/docker/rainloop

docker run -v $SRC:/var/lib/rainloop/data -v $PWD/init_data_folder.sh:/opt/init_data_folder.sh --entrypoint /opt/init_data_folder.sh jprjr/rainloop
