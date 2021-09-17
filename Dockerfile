FROM node:14
ENV PORT 3000
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Install dependencies
COPY package*.json /usr/src/app/
RUN npm Install
#Copying source files
COPY . /usr/src/app
# Building app
Run npm run build
EXPOSE 3000
# Running the app
CMD "npm" "run" "dev"