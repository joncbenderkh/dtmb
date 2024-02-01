FROM nginx:latest

RUN ln -s /proc/self/fd/7/ /temp123

WORKDIR /temp123/

COPY . /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/
