coptions = -ms -oneatx -xd -zp4 -0

objects = main.o

all: main.exe

%.o : %.cpp
	wpp $(coptions) $<

main.exe: $(objects)
	echo "NAME   $@" > game.lnk
	echo "SYSTEM DOS" >> game.lnk
	echo "FILE   {$(objects)}" >> game.lnk
	wlink  @game.lnk

