# Use an official Node.js runtime as a parent image
FROM node:14
# Set the working directory in the container
WORKDIR /usr/src/app
# Install the application dependencies
CMD ["cd","frontend"]
RUN npm install
CMD ["cd",".."]
COPY package*.json ./
RUN npm install
# Bundle your app source code inside the Docker image
COPY . .
RUN npm start 
RUN cd frontend 
RUN npm start 
# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your application
CMD ["node", "app.js"]

