# Docker image name
DOCKER_USERNAME=issgupat
DOCKER_IMAGE_NAME=fileagent-docker-sand5g

# ╔════════════════════════════════════════╗
# ║ Docker Image Build, Delete, and Upload ║
# ╚════════════════════════════════════════╝

docker-build:
	@docker build -t $(DOCKER_USERNAME)/$(DOCKER_IMAGE_NAME) .
	@echo "Docker image $(DOCKER_USERNAME)/$(DOCKER_IMAGE_NAME) built successfully."

docker-delete:
	@docker rmi -f $(DOCKER_USERNAME)/$(DOCKER_IMAGE_NAME)
	@echo "Docker image $(DOCKER_USERNAME)/$(DOCKER_IMAGE_NAME) deleted successfully."

docker-push:
	@docker push $(DOCKER_USERNAME)/$(DOCKER_IMAGE_NAME)
	@echo "Docker image $(DOCKER_USERNAME)/$(DOCKER_IMAGE_NAME) pushed to Docker Hub successfully."

# ╔════════════════╗
# ║ Help Function  ║
# ╚════════════════╝

help:
	@echo "Makefile for managing Docker images."
	@echo ""
	@echo "Targets:"
	@echo "  docker-build         Build the Docker image."
	@echo "  docker-delete        Delete the Docker image."
	@echo "  docker-push          Push the Docker image to Docker Hub."
	@echo "  help                 Show this help message."
	@echo ""

.PHONY: docker-build docker-delete docker-push help