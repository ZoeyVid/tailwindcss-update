FROM node:current-alpine
RUN yarn global add tailwindcss
ENTRYPOINT tailwindcss -i $INPUT_INPUT -o $INPUT_OUTPUT
