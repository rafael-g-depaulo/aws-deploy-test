FROM public.ecr.aws/docker/library/node:16.19.0-alpine

# install yarn (currently optional, but if it becomes an issue this might fix it)
# RUN ["corepack", "enable"]

WORKDIR /home/node/app

# Give rights to the node user
RUN chmod -R 777 /home/node/app

# install deps
COPY package.json yarn.lock ./
RUN yarn

# Give rights to the node user
RUN chmod -R 777 /home/node/app

# add config files
COPY . .

# # add global files
# COPY tools libs docs .yarn /app/

# USER node
CMD ["yarn", "nx", "serve", "api"]
