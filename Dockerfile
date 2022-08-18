FROM strapi/base
#:14

WORKDIR /app

COPY package.json .
#COPY yarn.lock .
COPY favicon.ico .
COPY admin/ admin/
COPY api/ api/
COPY components/ components/
COPY config/ config/
COPY extensions/ extensions/
COPY public/ public/

# Install dependencies, but not generate a yarn.lock file and fail if an update is needed (for more : https://classic.yarnpkg.com/en/docs/cli/install/#toc-yarn-install-frozen-lockfile).
#RUN yarn install --frozen-lockfile
RUN yarn add npx
RUN npx browserslist@latest --update-db

RUN yarn build

EXPOSE 1337

# We need to define the command to launch when we are going to run the image. We can use the keyword 'CMD' to do that.
# The following command will execute "yarn start".
CMD ["yarn", "start"]