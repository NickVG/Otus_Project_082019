# Otus_Project_082019

***Курсовая работа***

	Построение инфраструктуры с помощью терраформ
	Настройка и запуск базовых сервисов с помощью ansible
	запуск приложения в docker swarm

***План***

	Развёртывание с помощью терраформ инфраструктуры в GCP
	Накат docker-swarm с помощью ansible
	Запуск приложений в docker-swarm

***Что сделано***

	Терраформ для равзёртывания docker swarm в составе 3х узлов
	ansible playbooks для наката swarm
	docker images и docker-compose файлы для старта приложения

***Как запустить проект ***

	git clone https://github.com/NickVG/Otus_Project_082019.git
	cd terraform && terraform apply
	cd ../ansible && ansible-playbook -i inventory main.yml
	
	подклчиться к узлу manager
	cd /otus/docker
	docker-compose up -d
	docker-compose -f docker-compose-crawler.yml up -d
	docker-compose -f docker-compose-ui.yml up -d

***Запуск тестов***
	Для crawler
	docker-compose -f docker-compose-crawler.yml exec search_engine_crawler bash
	python3 -m unittest discover -s tests/
	python3-coverage run -m unittest discover -s tests/
	python3-coverage report --include crawler/crawler.py

	Для UI
	docker-compose -f docker-compose-crawler.yml exec search_engine_crawler bash


***Что должно получиться в итоге***

	Выполнены все условия курсового проекта реализованные в docker-swarm

	
