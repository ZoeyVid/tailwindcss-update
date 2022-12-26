FROM node:current-alpine
COPY run.sh /usr/local/bin/run
RUN chmod +x /usr/local/bin/run
ENTRYPOINT ["run"]
