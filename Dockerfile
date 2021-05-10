FROM node:12 

ADD ./ /app
WORKDIR /app
RUN npm install


ENTRYPOINT ["npm", "start"]
