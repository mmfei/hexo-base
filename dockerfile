FROM node

ENV HEXO_VERSION=3.7.1
ENV THEME_VERSION=v6.3.0
ENV THEME_PATH=themes/next
ENV THEME_GIT_URL=https://github.com/theme-next/hexo-theme-next.git

LABEL version="Hexo - ${HEXO_VERSION}, NexT - ${THEME_VERSION}"
LABEL maintainer="mmfei <wlfkongl@163.com>"

WORKDIR /blog

COPY docker-entrypoint.sh /usr/bin

RUN npm install -g hexo-cli && \
    chmod +x /usr/bin/docker-entrypoint.sh

ENTRYPOINT docker-entrypoint.sh

EXPOSE 4000
VOLUME /blog
