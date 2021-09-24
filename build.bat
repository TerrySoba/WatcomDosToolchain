docker build . -t watcom2_docker
del source\*.o
del source\*.exe
docker run -v C:\work\WatcomDosToolchain\source:/build watcom2_docker sh -c "cd /build && make -j8"