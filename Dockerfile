# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY /frontend/package.json ./

# Install the application dependencies
RUN npm install
COPY package*.json ./
RUN npm install
# Bundle your app source code inside the Docker image
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your application
CMD ["node", "app.js"]
