FROM alpine:3

COPY ["docker-entrypoint.sh", "/usr/bin/"]
RUN apk add smstools && \
 chmod +x /usr/bin/docker-entrypoint.sh

VOLUME [ "/var/spool/sms" ]

WORKDIR /var/spool/sms

ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]

CMD [ "smsd", "-t" ]
