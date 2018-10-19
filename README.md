# ufp-docker-wraps
Collection of docker wrapped applications, use all out of the box by mounting this to your ${PATH}

# Quickstart

mount the ./wraps folder to your path, in your bash init skript

	export PATH=${PATH}:./wraps
	
after that, the provided dockerized commands are available, and you can use the commands as in the shell

# Usage

Each wrap 

- Mounts the current working dir into the container
- the wrapped command is executed in the working dir which is /usr/src/ufp-app inside container
- alpine/slim versions of all wrapped commands used

