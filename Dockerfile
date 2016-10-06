FROM wordpress

#copy site files
COPY . /var/www/
#allow www-data to edit wp-content files
RUN chown www-data:www-data /var/www/wp-content/

#fixes macOS file permissions issues, super hacky
RUN usermod -u 1000 www-data
