# Use the official PHP image from the Docker Hub
FROM php:8.1-apache

# Copy the PHP application code into the container
COPY . /var/www/html/

# Install any necessary PHP extensions or dependencies
RUN docker-php-ext-install mysqli

# Expose port 80 for the application
EXPOSE 80

# Set the working directory
WORKDIR /var/www/html

# Start the Apache server
CMD ["apache2-foreground"]
