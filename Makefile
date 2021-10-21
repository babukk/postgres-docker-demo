include .env
export $(shell sed 's/=.*//' .env)

	DOCKER_FILE=-f docker-compose.yaml

up:
	docker-compose $(DOCKER_FILE) --compatibility up -d

down:
	docker-compose $(DOCKER_FILE) down

stop:
	docker-compose $(DOCKER_FILE) stop

start:
	docker-compose $(DOCKER_FILE) start

restart:
	docker-compose $(DOCKER_FILE) restart
