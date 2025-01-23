# syntax=docker/dockerfile:labs
FROM alpine:latest
RUN apk upgrade --no-cache -a && \
    apk add --no-cache ca-certificates tzdata tini libgcc libstdc++
COPY --chmod=777 run.sh /usr/local/bin/run.sh
ENTRYPOINT ["tini", "--", "run.sh"]
