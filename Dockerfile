FROM node:current-alpine
RUN apk upgrade --no-cache
RUN apk add --no-cache ca-certificates wget tzdata
RUN npm install --global yarn
RUN yarn global add tailwindcss
ENTRYPOINT tailwindcss -i $(input) -o $(output)
