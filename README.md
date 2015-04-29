
# How to run the NemID TU Example war-file with Docker on Mac OS X
This project documents how to get the NemID TU Example from
http://www.nets.eu/dk-da/Service/kundeservice/nemid-tu/NemID-tjenesteudbyderpakken-okt-2014/Pages/default.aspx#tab3
up and running using Docker and Tomcat on Mac OS X. Just ignore the boot2docker parts if you are not on Mac OS X.


### Install boot2docker
See https://docs.docker.com/installation/mac/

### Start boot2docker
```
boot2docker start
eval "$(boot2docker shellinit)"
```

### Build the docker image
```
git clone git@github.com:tlk/docker-nemid-tu-example.git
cd docker-nemid-tu-example
docker build -t nemid-tu-example .
```

### Start the docker image
```
docker run -it -p 8080:8080 nemid-tu-example
```
Note: To stop tomcat and the docker container press ctrl+c.

### Open the NemID TU example web application in a browser
Since the docker image was started in interactive mode, go to another terminal window
and open the url from there.
```
open http://$(boot2docker ip):8080
```

