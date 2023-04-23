FROM node:18.16.0
WORKDIR /project/remix-jokes

COPY ./remix-jokes/package.json .
COPY ./remix-jokes/package-lock.json .
RUN npm ci

EXPOSE 3000

COPY . .

 CMD ["npm", "run", "dev"]