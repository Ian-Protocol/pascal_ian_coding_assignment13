FROM node:20-alpine AS builder

WORKDIR /pascal_ian_ui_garden

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build-storybook

FROM nginx:alpine

COPY --from=builder /pascal_ian_ui_garden/storybook-static /usr/share/nginx/html

EXPOSE 8083

RUN sed -i 's/80;/8083;/' /etc/nginx/conf.d/default.conf

LABEL name="pascal_ian_coding_assignment12"

CMD ["nginx", "-g", "daemon off;"]
