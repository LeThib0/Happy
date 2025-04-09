# Use the official Node.js image as base
FROM node:10.10-alpine
 
# Create and set the working directory
WORKDIR /app
 
# Copy package.json and package-lock.json first for better caching
COPY package*.json ./
 
# Install dependencies
RUN npm install
 
# Copy the rest of the application files
COPY . .
 
# Expose the correct port (5500)
EXPOSE 5500
 
# Command to run the application
CMD ["npm", "start"]