export UID=$(shell id -u)
export GID=$(shell id -g)
export CURRENT_DIR=$(shell pwd)

start: vendor
	 php -S localhost:8000 -t public

#.PHONY:
#vendor:
#	docker run --user $${UID}:$${GID} --volume "${CURRENT_DIR}/src":/app \
#		composer:2.0 install
#
#vendor-update:
#	docker run --user $${UID}:$${GID} --volume "${CURRENT_DIR}/src":/app \
#		composer:2.0 update