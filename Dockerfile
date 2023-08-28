# Use an official Node.js runtime as the base image
FROM node:18.17.1

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the application's package.json and package-lock.json for installing dependencies
COPY package*.json ./

# Install the application's dependencies inside the container
RUN npm install

# Copy the rest of the application's files into the container
COPY . .

# Expose port 3000 so that the application can be accessed externally
EXPOSE 3000

# Command to run the application
CMD [ "node", "index.js" ]

