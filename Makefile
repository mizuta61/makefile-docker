up:
	docker compose up -d
down:
	docker compose down
build:
	docker compose build
attach-%:
	docker compose run --rm ${@:attach-%=%} sh
run-%:
	docker compose run --rm $(word 1, $(subst -, ,$*)) $(word 2, $(subst -, ,$*))
