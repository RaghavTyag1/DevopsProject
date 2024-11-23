# Use the official Node.js image from Docker Hub as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install the dependencies inside the container
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app will run on (port 3000 in our case)
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]
