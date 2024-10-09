# Use an official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define environment variables for the database
ENV DB_HOST=mariadb
ENV DB_USER=levelup
ENV DB_PASSWORD=levelup
ENV DB_DATABASE=levelup_docker

# Command to run the application
CMD ["npm", "start"]
