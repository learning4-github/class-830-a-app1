FROM node AS sapana
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
RUN ls
RUN ls /app/dist

FROM nginx
COPY --from=sapana /app/dist/angular-class8/ /usr/share/nginx/html/
