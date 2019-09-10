FROM node:10.11.0
RUN mkdir -p /app
COPY . /app
WORKDIR /app
EXPOSE 3000
RUN npm install
RUN npm run build

CMD [ "npm", "start" ]