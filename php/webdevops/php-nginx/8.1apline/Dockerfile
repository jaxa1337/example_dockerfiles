FROM webdevops/php-nginx:8.1-alpine
RUN mkdir -p /tmp/logs
RUN touch /tmp/logs/cron.log
RUN chown application:application -R /tmp/logs

COPY ./provision/cron/crontab /etc/crontabs/application
