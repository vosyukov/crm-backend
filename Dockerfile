
FROM node:12.16.1-alpine
COPY . src/
WORKDIR app/
RUN npm ci --only-production
RUN npm run build
EXPOSE 3000
ENTRYPOINT npm run start:prod