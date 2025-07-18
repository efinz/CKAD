# The line below is the base image for the custom Nginx container
FROM ubuntu:latest

# Identify the maintainer of an image
LABEL version="1.0.0"
LABEL maintainer "that-efinz@outlook.com"

# Update the package list and install Nginx
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install nginx -y

# Expose port 80
EXPOSE 80

# Start Nginx when the container runs with the following command
CMD ["nginx", "-g", "daemon off;"]