FROM nginx:latest

RUN ln -s /proc/self/fd/7/ /temporary

WORKDIR /temporary
RUN find /

COPY . /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/
