CMD_VER := 6.6.0.13
CMD_VER_MINOR := 6.6
CMD_VER_MAJOR := 6

IMG := imagehawk/cmd-docker

build:
	./build.sh

export CMD_VER CMD_VER_MAJOR CMD_VER_MINOR IMG
