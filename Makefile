PUSH_TAG ?= latest

build:
	docker build . -t models-api:latest

run:
	docker build . -t models-api:latest && docker run -p 8080:8080 -ti models-api:latest 

stop:
	docker rm $(docker stop $(docker ps -a -q --filter ancestor=models-api:latest --format="{{.ID}}"))

push:
	docker tag models-api:latest aihero/models-api:$(PUSH_TAG)
	docker push aihero/models-api:$(PUSH_TAG)
