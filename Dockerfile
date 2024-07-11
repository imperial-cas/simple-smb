FROM alpine:3.20

RUN apk add samba

COPY smb.conf /etc/samba/smb.conf

CMD ["smbd", "-d3", "-i"]

