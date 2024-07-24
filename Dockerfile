# Use the official PHP image from the Docker Hub
FROM php:8.1-apache

# Copy the application code into the container
COPY src/ /var/www/html/

# Expose port 80 for the application
EXPOSE 80

# Set the working directory
WORKDIR /var/www/html

# Start the Apache server
CMD ["apache2-foreground"]
