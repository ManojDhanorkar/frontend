FROM registry.access.redhat.com/ubi8/nginx-120:1-84.1675799502

# Labels
LABEL name="frontend" \
    maintainer="tech@mycompany.com" \
    vendor="mycompany" \
    version="1.0.0" \
    release="1" \
    summary="This service provides UI for adding orders" \
    description="This service provides UI for adding orders"

COPY ./build /opt/app-root/src

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
