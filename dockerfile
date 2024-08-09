# use Node.js base image
FROM node:16

# setting working directory in container
WORKDIR /app

# copy file package.json and package-lock.json it working directory
COPY package*.json ./

# install dependencies
RUN npm install

# copy all working directory
COPY . .

# create build application
RUN npm run build

# open port 3000
EXPOSE 3000

# setting entry point for container
CMD ["npm", "run", "start:prod"]