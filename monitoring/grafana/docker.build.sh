echo `git show --format="%h" HEAD | head -1` > build_info.txt
echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt

#docker build -t $USER_NAME/grafana:1.0 .

docker build -t $USER_NAME/grafana:1.0  --build-arg GF_SECURITY_ADMIN_USER=admin --build-arg  GF_SECURITY_ADMIN_PASSWORD=secret .

