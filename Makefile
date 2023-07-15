up:
	docker compose up -d
down:
	docker compose down
build:
	docker compose build
attach-%:
	docker compose run --rm ${@:attach-%=%} sh
