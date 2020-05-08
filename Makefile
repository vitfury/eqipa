.SILENT: ;  # Avoid commands output

create:
	make down
	docker rmi eqipa_app -f
	docker-compose build
	make up

up:
	docker-compose up -d
	echo "Your app runs on \033[1;34m http://localhost:8008/ \033[0m"

down:
	echo 'Remove project containers ...'
	docker-compose kill
	echo 'Remove stopped containers ...'
	docker-compose rm -fv

restart:
	make down && make up
