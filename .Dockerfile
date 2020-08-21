FROM node:12-alpine

RUN mkdir -p /usr/app
WORKDIR /usr/app
COPY package.json tsconfig.json ./
COPY src ./src
ENTRYPOINT [ "./postgres-wait.sh" ]
RUN npm install 

EXPOSE 3000
CMD npm start 