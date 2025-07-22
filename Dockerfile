# Use official Node.js 18 image as base
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy only package.json and package-lock.json first
COPY package.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the default Strapi port
EXPOSE 1337

# Start the Strapi app
CMD ["npm", "start"]
