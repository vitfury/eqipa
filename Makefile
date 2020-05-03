up:
	docker-compose up -d

stop:
	docker-compose stop

restart:
	make stop && make up