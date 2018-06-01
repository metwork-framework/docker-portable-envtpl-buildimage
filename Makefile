NAME=metwork/portable-envtpl-buildimage
VERSION=$(shell ./version.sh)
ENVTPL_SOURCE=envtpl

build:
	docker build -f Dockerfile -t $(NAME):$(VERSION) .

run:
	docker run --rm metwork/portable-envtpl-buildimage >portable_envtpl.tar.gz

release: build
	if test "$(VERSION)" != "dev" -a "${DOCKER_PASSWORD}" != ""; then docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"; docker push $(NAME):$(VERSION); fi
