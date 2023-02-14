FROM registry.access.redhat.com/ubi8/nginx-120:1-84.1675799502

# Labels
LABEL name="frontend" \
    maintainer="tech@mycompany.com" \
    vendor="mycompany" \
    version="1.0.0" \
    release="1" \
    summary="This service provides UI for adding orders" \
    description="This service provides UI for adding orders"

COPY ./build /usr/share/nginx/html

#COPY nginx.conf /etc/nginx/nginx.conf

USER 0

RUN chown -R nginx:0  /var/log/nginx /var/run /etc/nginx /var/cache/ && \
chmod 777  /var/log/nginx /var/run /etc/nginx /var/cache/

EXPOSE 80

USER nginx

CMD ["nginx", "-g", "daemon off;"]
