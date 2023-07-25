# Use the official MySQL 5.5 image as the base image
FROM mysql:5.5

# Copy the SQL dump file into the container
COPY init.sql /docker-entrypoint-initdb.d/

# The /docker-entrypoint-initdb.d/ directory is a special directory where scripts will be automatically executed during container startup.
# The SQL dump file will be executed, creating the 'test' database and the 'dogs' table with sample data.
