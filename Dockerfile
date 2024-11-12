# Use an official Node.js image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the development server port
EXPOSE 3000

# Default command to run Astro's dev server
CMD ["npm", "run", "dev"]
