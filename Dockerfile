FROM node:14
# ENV PORT 3000
# Create app directory
# RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Install dependencies (package*.json /usr/src/app/)
COPY package*.json ./
RUN npm install
#Copying source files (. /usr/src/app)
COPY . .
# Building app
# Run npm run build
EXPOSE 3000
# Running the app
CMD "npm" "run" "dev"
# CMD [ "node", ]