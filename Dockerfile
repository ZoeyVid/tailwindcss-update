FROM node:current-alpine
ENTRYPOINT yarn add --no-lockfile -D tailwindcss $INPUT_PLUGINS && yarn run tailwindcss -i $INPUT_INPUT -o $INPUT_OUTPUT
