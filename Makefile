IMAGE_NAME:=ubuntu_clang10
CONTAINER_NAME:=ubuntu_clang

.PHONY: run, build

run: build
	@ docker run --rm -it -v ${PWD}/tests:/clang_tests --name ${CONTAINER_NAME} ${IMAGE_NAME} bash -c \
	'cd clang_tests; \
	echo "clang++ version:"; \
	/clang_10.0.0/bin/clang++ --version; \
	echo "now you can just run make"; \
	exec /bin/bash'

build:
	@ docker build -t ${IMAGE_NAME} .
	@ docker image ls
