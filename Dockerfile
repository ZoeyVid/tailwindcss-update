FROM node:current-alpine
RUN apk upgrade --no-cache
RUN apk add --no-cache ca-certificates wget tzdata
RUN yarn global add tailwindcss
ENTRYPOINT tailwindcss -i $INPUT_INPUT -o $INPUT_OUTPUT
