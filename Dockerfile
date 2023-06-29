# Use the latest Ubuntu image as the base
FROM ubuntu:latest

# Update the system and install Nginx
RUN apt-get update && \
    apt-get install -y nginx

# Remove the default Nginx configuration file
RUN rm /etc/nginx/sites-enabled/default

# Copy our custom Nginx configuration file into the container
COPY nginx.conf /etc/nginx/sites-enabled/

# Expose port 8080 to the outside world
EXPOSE 8080

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
