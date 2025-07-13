#!/bin/bash

# docker build -t test-image ./
# docker images | tee output.log

# # curl 用コンテナの起動
# docker run -ti -d --name="curl-container" test-image
# # API 用コンテナの起動
# docker run -ti -d --name="api-container" test-image
# docker ps | tee output.log

# # コンテナ "api-container" の IP アドレスを取得
# docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' api-container

# docker exec -ti curl-container sh

# curl-container を再起動
# docker restart curl-container
# api-container を再起動
# docker restart api-container

# {
#   echo "curl-container IP:"
#   docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' curl-container
#   echo "curl-container MAC:"
#   docker inspect --format='{{range .NetworkSettings.Networks}}{{.MacAddress}}{{end}}' curl-container
#   echo ""

#   echo "api-container IP:"
#   docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' api-container
#   echo "api-container MAC:"
#   docker inspect --format='{{range .NetworkSettings.Networks}}{{.MacAddress}}{{end}}' api-container
# } | tee output.log

# docker exec -ti curl-container sh
# curl 172.17.0.3:5000
# arp
# docker exec -ti api-container sh
# arp

# コンテナを停止
docker stop curl-container api-container
# 停止済みのコンテナを削除
docker rm curl-container api-container