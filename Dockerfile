
# Use the official Node.js image from the Docker Hub
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the dependencies in the container
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 to allow access to the app
EXPOSE 3000

# Define the command to run the app when the container starts
CMD ["npm", "start"]
