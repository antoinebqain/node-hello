.PHONY = all
RELEASE=$(APPVERSION)

all: build tag push commit

build:
	docker build -t hello .

tag:
	docker tag hello:latest tonybaqain/node-hello:${RELEASE}

push:
	docker push tonybaqain/node-hello:${RELEASE}

commit:
	sed -i -e "s@appVersion:.*@appVersion: \"${RELEASE}\"@" helm/Chart.yaml
	git add .
	git commit -m "adding changes for ${RELEASE}"
	git push