FROM python:3.12.3-alpine

# アプリケーションコードをコンテナに追加
ADD app.py /app/

# 作業ディレクトリを指定
WORKDIR /app/

# Flask をインストール
RUN pip install flask

# curl をインストール（デバッグや動作確認用など）
RUN apk add --no-cache curl

# アプリケーションを起動
CMD ["python", "app.py"]