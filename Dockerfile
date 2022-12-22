FROM nginx:alpine

LABEL maintainer="ReliefMelone"

# Configure NGINX
COPY ./nginx.conf /etc/nginx/nginx.conf

RUN chgrp -R root /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R 770 /var/cache/nginx /var/run /var/log/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]