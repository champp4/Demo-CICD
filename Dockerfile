# Use Node.js lightweight image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
