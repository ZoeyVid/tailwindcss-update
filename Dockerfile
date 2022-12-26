FROM node:current-alpine
ENTRYPOINT npm install -D tailwindcss @tailwindcss/forms && npx tailwindcss -i $INPUT_INPUT -o $INPUT_OUTPUT
