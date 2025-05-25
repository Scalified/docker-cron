FROM scalified/supervisor

LABEL maintainer="Scalified <scalified@gmail.com>"

ARG CRONTABS_DIR
ENV CRONTABS_DIR ${CRONTABS_DIR:-/etc/crontabs}

ENV CRONTAB $CRONTABS_DIR/root

RUN echo "BUSYBOX (CROND) VERSION: $(busybox | head -n 1)"

COPY etc/supervisor.d/ $SUPERVISOR_CONF_DIR/

VOLUME $CRONTABS_DIR
VOLUME /etc/periodic

