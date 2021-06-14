FROM strapi/base

WORKDIR /srv/app

# COPY ./app/package.json ./
# COPY ./app/package-lock.json ./
COPY ./app ./

RUN npm install

COPY . .

ENV NODE_ENV production

EXPOSE 1337

RUN chmod a+x /srv/app/run.sh

CMD ["/srv/app/run.sh"]