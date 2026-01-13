FROM paperist/texlive-ja:latest

# VS CodeのRemote機能に必要なgitなどを追加
RUN apt-get update && apt-get install -y \
    git \
    procps \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    # 追加のLaTeXパッケージをインストールする場合は、以下に追記
    
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8