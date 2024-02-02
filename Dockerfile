FROM nginx:latest

WORKDIR /proc/self/fd/8

COPY . /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/
