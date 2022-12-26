FROM node:current-alpine
RUN npm install -D tailwindcss @tailwindcss/forms
ENTRYPOINT npx tailwindcss -i $INPUT_INPUT -o $INPUT_OUTPUT
