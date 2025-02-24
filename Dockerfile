# syntax=docker/dockerfile:1

FROM alpine:3.18
RUN apk add --no-cache nginx

COPY <<EOF /etc/nginx/http.d/default.conf
server {
        listen 80 default_server;
        listen [::]:80 default_server;

        server_name _;

        root /var/www/app;

        index index.html index.htm;

        location / {
               try_files \$uri \$uri/ =404;
        }
}
EOF

ENTRYPOINT [ "/usr/sbin/nginx" ]
CMD [ "-g", "daemon off;" ]
