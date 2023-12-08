# Use an official nginx image as a parent image
FROM nginx:latest

# Set the working directory in the container to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the 'web' directory (at your Dockerfile's location) into the container
COPY . .