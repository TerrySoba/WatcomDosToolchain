#!/bin/bash
docker build . -t watcom2_docker
rm source/*.o
rm source/*.exe
docker run --user $(id -u):$(id -g) -v `pwd`/source/:/build watcom2_docker sh -c "cd /build && make"