FROM node:10.22.0
WORKDIR /app
COPY . . 

# RUN mkdir /app/app/Features
RUN yarn install
RUN yarn build


From nginx
COPY --from=0 /app/build /usr/share/nginx/html
