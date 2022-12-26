FROM node:current-alpine
RUN yarn add -D tailwindcss @tailwindcss/forms
ENTRYPOINT yarn run tailwindcss -i $INPUT_INPUT -o $INPUT_OUTPUT
