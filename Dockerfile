FROM node:current-alpine
RUN yarn global add tailwindcss @tailwindcss/forms
ENTRYPOINT tailwindcss -i $INPUT_INPUT -o $INPUT_OUTPUT
