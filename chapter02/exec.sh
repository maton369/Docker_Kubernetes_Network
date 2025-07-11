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
docker restart curl-container
# api-container を再起動
docker restart api-container