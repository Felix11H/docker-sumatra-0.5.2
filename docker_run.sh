#!/bin/bash

docker run -it -p 127.0.0.1:8001:8000 \
       --user="$(id -u):$(id -g)" \
       -v $(pwd):/home/lab \
       felix11h/docker-sumatra-0.5.2 \
       /bin/bash -c \
       'source info.sh;
        bash'
