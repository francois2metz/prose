FROM kkarczmarczyk/node-yarn:6.9

WORKDIR /code

COPY package.json /code/
RUN npm install

COPY . /code

RUN yarn run build

EXPOSE 3000
CMD [ "yarn run serve -D -C --compress -f img/favicon.ico" ]
