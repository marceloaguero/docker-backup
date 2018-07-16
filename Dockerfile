FROM alpine:latest

COPY backup.sh /etc/periodic/daily

VOLUME /backup-source
VOLUME /backup-dest

CMD crond -l 2 -f