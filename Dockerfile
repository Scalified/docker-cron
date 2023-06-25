FROM scalified/alpine-supervisor:3.18.2

ARG PERIODIC_DIR=/etc/periodic

ARG CRONTABS_DIR
ENV CRONTABS_DIR ${CRONTABS_DIR:-/etc/crontabs}

ARG CRON_STDOUT_FILE
ENV CRON_STDOUT_FILE ${CRON_STDOUT_FILE:-/var/log/crond-stdout.log}

ARG CRON_STDERR_FILE
ENV CRON_STDERR_FILE ${CRON_STDERR_FILE:-/var/log/crond-stderr.log}

COPY config/supervisor-cron.ini $SUPERVISOR_CONF_DIR

RUN mkdir -p $CRONTABS_DIR \
    $PERIODIC_DIR

VOLUME $CRONTABS_DIR

VOLUME $PERIODIC_DIR

RUN touch $CRON_STDOUT_FILE $CRON_STDERR_FILE

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh

