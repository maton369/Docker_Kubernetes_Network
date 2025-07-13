# Network_Namespace/Dockerfile

FROM ubuntu:22.04

# 非対話モード設定
ENV DEBIAN_FRONTEND=noninteractive

# 必要なパッケージをインストール
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        iproute2 \
        iputils-ping \
        net-tools \
        sudo \
        bash \
        procps \
        less \
        vim \
        curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 作業ディレクトリ作成
WORKDIR /workspace

# 起動時にbashを起動
CMD [ "bash" ]