# ufp-docker-wraps
Collection of docker wrapped applications, use all out of the box by mounting this to your ${PATH}

# Prerequisites

- Docker
- Bash (Bourne-Again-Shell)

# Quickstart 

### Bash
	git clone https://github.com/trifox/ufp-docker-wraps ~/ufp-docker-wraps 
	echo "export PATH=${PATH}:~/ufp-docker-wraps/wraps\n">>~/.bashrc 
	 
### Zsh 
	git clone https://github.com/trifox/ufp-docker-wraps ~/ufp-docker-wraps 
	echo "export PATH=${PATH}:~/ufp-docker-wraps/wraps\n">>~/.zshrc 
	 
# Usage

use commandos provided e.g.

	robot



Each wrap 

- Mounts the current working dir into the container
- the wrapped command is executed in the working dir which is /usr/src/ufp-app inside container
- alpine/slim versions of all wrapped commands used

