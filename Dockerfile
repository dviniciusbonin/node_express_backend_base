FROM node:14-alpine3.14 as build

WORKDIR /home/app

COPY package*.json ./

RUN yarn

COPY . .

RUN yarn build


#Development
FROM build as development

WORKDIR /home/app

COPY package*.json ./

RUN yarn

COPY . .

CMD ["yarn", "dev"]

#Production
FROM build as production

WORKDIR /home/app

COPY package*.json ./

RUN yarn install --production

COPY --from=build /home/app/dist ./dist

COPY --from=build /home/app/bin ./bin

CMD ["sh", "./bin/run.sh"]
