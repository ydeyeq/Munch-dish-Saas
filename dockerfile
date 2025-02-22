# Use a Node.js base image
FROM node:16

# Set the working directory
WORKDIR /workspaces/Munch-dish-Saas

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Define the command to run your app
CMD ["node", "server.js"]