#!/bin/sh

rc-service cron stop 2> /dev/null

supervisord -c /etc/supervisord.conf

tail -f $CRON_STDOUT_FILE $CRON_STDERR_FILE

