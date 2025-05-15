# Use official Node.js version 18 image
FROM node:18

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package files first to install dependencies 
COPY package*.json ./

# Install app dependencies
RUN npm install  

# Copy all remaining source files
COPY . .

# Open port 8080 for the app
EXPOSE 8080

# Command to run the app
CMD [ "npm", "start" ]
