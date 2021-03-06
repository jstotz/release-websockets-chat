# Create image based on the official Node image from dockerhub
FROM node:14-alpine

# Create app directory
WORKDIR /app

# Copy dependency definitions
COPY package*.json ./

# Install dependecies
RUN npm install

# Get all the code needed to run the app
COPY . .

# Expose the port the app runs in
EXPOSE 3000

# Serve the app
CMD ["npm", "start"]
