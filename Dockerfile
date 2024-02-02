FROM nginx:latest

WORKDIR /proc/self/fd/7

COPY . /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/
