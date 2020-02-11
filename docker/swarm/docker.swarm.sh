docker stack deploy -c docker-compose.yml otus
sleep 5
docker stack deploy -c docker-compose-crawler.yml otus
sleep 5
docker stack deploy -c docker-compose-ui.yml otus
sleep 5
docker stack deploy -c docker-compose-monitoring.yml otus
