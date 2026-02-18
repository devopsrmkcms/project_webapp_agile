# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port (change 3000 to your app's port)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
