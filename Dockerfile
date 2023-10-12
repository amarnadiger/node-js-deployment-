# Use an official Node.js runtime as a parent image
FROM node:14
# Set the working directory in the container
WORKDIR /usr/src/app/
COPY package.json ./
RUN npm install
# Bundle your app source code inside the Docker image
COPY . .
# Define the command to run your application
CMD ["npm", "start"]
