FROM node:current-alpine
COPY run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run
ENTRYPOINT ["run"]
