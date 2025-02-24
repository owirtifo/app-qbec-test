# syntax=docker/dockerfile:1

FROM alpine:3.18
RUN apk add --no-cache nginx

COPY <<EOF default.conf
hello
EOF

ENTRYPOINT [ "/usr/sbin/nginx" ]
CMD [ "-g", "daemon off;" ]
