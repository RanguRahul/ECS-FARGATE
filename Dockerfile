# Use the official httpd (Apache HTTP Server) image as base
FROM httpd:latest

# Copy index.html from the current directory into the container's /var/www/html directory
COPY index.html /usr/local/apache2/htdocs/

# Specify the command to run when the container starts
CMD ["httpd", "-D", "FOREGROUND"]

# Expose port 80 to allow outside access to our web server
EXPOSE 80

