.PHONY = all

all: build tag push

build:
	docker build -t hello .

tag:
	docker tag hello:latest tonybaqain/node-hello:latest

push:
	docker push tonybaqain/node-hello:latest