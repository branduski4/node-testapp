# Use the official Node.js image as the base image
FROM node:latest

# Create and set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire application to the container
COPY . .

# Expose a port if your application listens on a specific port
EXPOSE 3000

# Define the command to run your application
CMD ["node", "./src/server.js"]
