# Use Node.js 14 LTS as the base image
FROM node:14

# Set working directory within the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 (assuming your application listens on port 3000)
EXPOSE 3000

# Command to run the application
CMD ["node", "server.js"]