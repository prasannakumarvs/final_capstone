# Use a lightweight image for static content
FROM nginx:alpine

# Copy the website content from the host machine
COPY . /usr/share/nginx/html/

# Expose the port number on App
EXPOSE 80  

# Start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]
