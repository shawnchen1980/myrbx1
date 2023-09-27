#!/bin/bash

docker run -it --rm --net=host --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v .:/ws rbx1_py