build:
	sudo docker-compose -f docker-compose.yml up -d --build

up:
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down

down_v:
	docker-compose -f docker-compose.yml down -v

mm:
	docker exec -it horilla_web python manage.py makemigrations

m:
	docker exec -it horilla_web python manage.py migrate

dd:
	docker exec -t horilla_db  pg_dump -c -U techtrishna -d techtrishna > dwms_dump_data_2024_12_12.sql

dr:
	cat dwms_dump_data_2024_12_12.sql | sudo docker exec -i horilla_db psql -U techtrishna

rweb:
	docker restart horilla_web

ir:
	docker exec -it horilla_web pip install -r requirements.txt

csu:
	docker exec -it horilla_web python manage.py createsuperuser

lw:
	docker logs horilla_web -f
ln:
	docker logs pm_system_nginx -f

fixture:
	docker exec -it horilla_web python manage.py loaddata province
	docker exec -it horilla_web python manage.py loaddata districts
	docker exec -it horilla_web python manage.py loaddata municipality
	docker exec -it horilla_web python manage.py loaddata ward
	docker exec -it horilla_web python manage.py loaddata groups
	docker exec -it horilla_web python manage.py loaddata roles

run:
	python3 manage.py runserver

rmm:
	python3 manage.py makemigrations

rm:
	python3 manage.py migrate

rir:
	pip install -r requirements.txt

rcsu:
	python3 manage.py createsuperuser

cs:
	docker exec -it horilla_web python manage.py collectstatic --noinput

rfixer:
	python3 manage.py loaddata province
	python3 manage.py loaddata districts
	python3 manage.py loaddata municipality
shell:
	docker exec -it horilla_web python manage.py shell

vps_mm:
	docker exec -i horilla_web python manage.py makemigrations

vps_m:
	docker exec -i horilla_web python manage.py migrate