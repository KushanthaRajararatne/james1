FROM nginx:1.25.3
RUN rm /etc/nginx/conf.d/*
COPY nginx.conf /etc/nginx/nginx.conf
RUN groupadd -r www-data && \
useradd --no-log-init -r -g www-data www-data \
touch /var/run/nginx.pid && \
chown -R www-data:www-data /var/run/nginx.pid && \
chown -R www-data:www-data /var/cache/nginx
USER www-data
