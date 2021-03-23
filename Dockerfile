FROM alpine:3

RUN apk add --no-cache smstools supervisor && \
    mkdir -p /var/spool/sms/{outgoing,checked,failed,incoming,sent}

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

WORKDIR /var/spool/sms

CMD ["/usr/bin/supervisord"]
