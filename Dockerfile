FROM node:18.16.0
WORKDIR /project/remix-practice

COPY ./remix-practice/package.json .
COPY ./remix-practice/package-lock.json .
RUN npm ci

EXPOSE 3000

COPY . .

 CMD ["npm", "run", "dev"]