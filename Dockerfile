FROM scalified/alpine-supervisor:latest

ENV CRONTAB_DIR=/var/spool/cron
ENV PERIODIC_DIR=/etc/periodic
ENV CRON_STDOUT_FILE=/var/log/crond-stdout.log
ENV CRON_STDERR_FILE=/var/log/crond-stderr.log

COPY config/supervisor-cron.ini $SUPERVISOR_CONF_DIR

VOLUME $CRONTAB_DIR

VOLUME $PERIODIC_DIR

RUN touch $CRON_STDOUT_FILE $CRON_STDERR_FILE

ENTRYPOINT supervisord -c /etc/supervisord.conf && tail -f $CRON_STDOUT_FILE $CRON_STDERR_FILE
