# ベースイメージとしてUbuntu 20.04を指定
FROM ubuntu:20.04

# タイムゾーン設定と非対話モードの環境変数を設定
ENV TZ=Etc/UTC
ENV DEBIAN_FRONTEND=noninteractive

# パッケージリストの更新と基本ツールのインストール
RUN apt-get update && apt-get install -y \
    tzdata \
    curl \
    wget \
    vim \
    sudo \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリの設定
WORKDIR /workspace
