# 2 phases

# build phase

FROM node:16-alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . . 
RUN npm run build

# Run phase
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
# no need for CMD as nginx image has default command to start nginx