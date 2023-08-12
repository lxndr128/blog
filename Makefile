setup:
	cp .env.example .env
	docker-compose build
	docker-compose up -d db
	docker-compose run --rm app rails db:prepare
	docker-compose down

up:
	docker-compose up -d app

down:
	docker-compose down

b:
	docker-compose exec app bash

c:
	docker-compose exec app rails c