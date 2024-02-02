FROM nginx:latest

WORKDIR /proc/self/fd/8
RUN ln -s /proc/self/fd/8 /tmp123

COPY . /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/
