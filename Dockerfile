FROM node:12-alpine

WORKDIR C:\test

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --quiet

COPY . .

EXPOSE 5477

CMD [ "node", "src/app.js" ]