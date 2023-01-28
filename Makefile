IMAGE=deno-app
USER=maminou
PASS=


# build the docker image
DockerBuild:
	docker build -t $(IMAGE) .
	docker tag deno-app $(USER)/$(IMAGE)
.PHONY: build

# Push The Docker Image to Dockerhub
DockerPush:
	docker push $(USER)/$(IMAGE)
.PHONY: push

# Login To DockerHub
DockerLogin:
	docker login -u $(USER) -p $(PASS)
.PHONY: login


# build the docker image

DockerRun:
	docker run -p 8000:8000 $(IMAGE) 
.PHONY: run
