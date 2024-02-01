FROM nginx:latest

WORKDIR /proc/self/fd
RUN find /

COPY . /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/
