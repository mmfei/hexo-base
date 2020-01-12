#!/usr/bin/env bash

if [ ! -f "_config.yml" ]; then
    hexo init .
fi

if [ ! -f "${THEME_PATH}/_config.yml" ]; then
    git clone -b ${THEME_VERSION} ${THEME_GIT_URL} ${THEME_PATH}
fi

hexo server
