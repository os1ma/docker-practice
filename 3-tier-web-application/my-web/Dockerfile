FROM nginx:1.13.7-alpine

# 設定ファイルの配置
RUN rm /etc/nginx/conf.d/default.conf
ADD server.conf /etc/nginx/conf.d/server.conf

# コンテンツの配置
RUN rm /usr/share/nginx/html/*
RUN touch /usr/share/nginx/html/health.html
ADD dist /usr/share/nginx/html/
