FROM node:18-alpine 
# ARG NPM_TOKEN
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000

# #lighter server image
# FROM public.ecr.aws/sg/node:18-alpine
# WORKDIR /var/app/ts-bp-be

# ARG NPM_TOKEN

# #Copy package.json
# COPY ./package*.json ./
# #Copy prebuild dist
# COPY --from=build /var/app/ts-bp-be/dist ./dist
# COPY ./locales ./locales
# #COPY ./mail-template ./mail-template
# #COPY ./swagger-doc ./swagger-doc
# COPY .npmrc .npmrc
# #Copy npm pacakges with prod flag
# RUN npm ci --omit=dev
# COPY .env .env
# EXPOSE 80
CMD ["node","website.js"]