# Use an official Node.js runtime as a parent image
FROM node:14
# Set the working directory in the container
WORKDIR /app
#COPY . /app #copy the enire source code in the present working directory 
WORKDIR /frontend
RUN npm install #installing dependencies which are related to frontend 
WORKDIR ..
RUN npm install #installinf dependencies which are related to entire application
RUN npm start 
WORKDIR /frontend 
RUN npm start 
# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your application
CMD ["node", "app.js"]

