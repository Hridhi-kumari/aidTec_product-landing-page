#e the official NGINX image as the base image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
#WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container
COPY . /usr/share/nginx/html


# Expose the port defined by the PORT environment variable
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
