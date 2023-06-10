# Base image
FROM node:18.16.0

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your application is listening on (if applicable)
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
