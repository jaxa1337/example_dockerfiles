FROM webdevops/php-nginx:8.1-alpine
RUN mkdir -p /tmp/logs
RUN touch /tmp/logs/cron.log
RUN chown application:application -R /tmp/logs

RUN apk update && \
    apk add --no-cache openjdk8-jre=8.345.01-r3

COPY ./provision/cron/crontab /etc/crontabs/application
