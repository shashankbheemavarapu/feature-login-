# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy the index.html file into the Nginx default public directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to allow external access to the website
EXPOSE 80

# Run Nginx in the foreground (default command for the Nginx container)
CMD ["nginx", "-g", "daemon off;"]