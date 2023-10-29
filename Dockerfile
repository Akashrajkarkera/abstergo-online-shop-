# Use an official Node runtime as base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy all files from the current directory to the working directory
COPY . .

# Expose a port (e.g., 3000) if your app requires it
EXPOSE 3000

# Define the command to run your application
CMD ["node", "index.js"]
