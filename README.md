# Otus_Project_082019

***Курсовая работа***

	Построение инфраструктуры с помощью терраформ
	Настройка и запуск базовых сервисов с помощью ansible
	запуск приложения в docker swarm

***План***

	Развёртывание с помощью терраформ инфраструктуры в GCP
	Накат docker-swarm с помощью ansible
	Запуск приложений в docker-swarm
***Prerquisites***

	На машине оператора должен быть установлен terraform, ansible, желательно git.
	в GCP должен быть создан проект и скаачан account private key.

***Что сделано***

	Терраформ для равзёртывания docker swarm в составе 3х узлов(manager и два worker)
	ansible playbooks для наката swarm
	docker images и docker-compose файлы для старта приложения

***Как запустить проект***

	git clone https://github.com/NickVG/Otus_Project_082019.git

Скачивать ключ GCP на систему. Путь к ключу указать в файле terraform/terraform.tf

	cd terraform && terraform apply
	cd ../ansible && ansible-playbook -i inventory main.yml -e 'ansible_python_interpreter=/usr/bin/python'

подключиться к узлу manager

	cd /otus/docker/swarm
	sudo bash docker.swarm.sh

***Мониторинг***

	Мониторинг с помощью Прометея доступен по стандартному порту.
	Также есть возможность натсройки мониторинга с помощью графаны.
	Настроен алертинг в slack. Для настройки оповещений необходимо переименовать файл monitoring/alertmanager/config.yml.example в config.yml и указать правильный линк на канал в слаке.

	Для crawler
	docker-compose -f docker-compose-crawler.yml exec search_engine_crawler bash
	python3 -m unittest discover -s tests/
	python3-coverage run -m unittest discover -s tests/
	python3-coverage report --include crawler/crawler.py

	Для UI
	docker-compose -f docker-compose-crawler.yml exec search_engine_crawler bash
	python -m unittest discover -s tests/
	coverage run -m unittest discover -s tests/
	coverage report --include ui/ui.py

***docker-compose***

	файлы для запуска в docker-compose находятся в папке docker. переменные необходимо создать аналогично файлу .env.example
	
