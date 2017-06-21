NAME=thefab/static-envtpl-buildimage
VERSION=$(shell ./version.sh)

build:
	docker build -f Dockerfile -t $(NAME):$(VERSION) .

run:
	docker run --rm thefab/static-envtpl-buildimage cat portable_envtpl.tar.gz >portable_envtpl.tar.gz

release:
	if test "$(VERSION)" != "dev" -a "${DOCKER_PASSWORD}" != ""; then docker login -e="${DOCKER_EMAIL}" -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"; docker push $(NAME):$(VERSION); fi
