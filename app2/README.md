**MySQL Docker Image and Kubernetes Deployment with Persistence**

# **INTRODUCTION**

This README file outlines the process of creating a MySQL Docker image, utilizing it to set up a database with a provided SQL file, and deploying the MySQL database in Kubernetes while ensuring persistence. Optionally, it includes the steps for pushing the created Docker image to Docker Hub for sharing and future use.

# **TASKS**

## **1. Create a Dockerfile and Build the MySQL Image**

   - Create a Dockerfile specifying the base image as MySQL 5.5.
   - Copy the `init.sql` file containing database configurations into the container.
   - Use the Dockerfile to build the MySQL Docker image.
   - (Optional) Push the created Docker image to Docker Hub for sharing and future use.

## **2. Deploy MySQL in Kubernetes with Persistence**

   - Create a Kubernetes deployment YAML file (`mysql-deployment.yaml`) for MySQL.
   - Specify the image as the one built in Task 1.
   - Define the environment variable for the MySQL root password.
   - Mount the PersistentVolumeClaim (`mysql-pvc`) to ensure data persistence.

## **3. Create the MySQL Service**

   - Create a Kubernetes service YAML file (`mysql-service.yaml`) to expose MySQL internally in the cluster.
   - Define the ports for MySQL to listen on.

## **4. Apply the Kubernetes Configurations**

   - Apply the PersistentVolumeClaim (`mysql-pvc.yaml`) YAML files.
   - Apply the MySQL deployment and service YAML files (`mysql-deployment.yaml` and `mysql-service.yaml`) to create the MySQL pod and service.

## **5. Verify the MySQL Deployment and Persistence**

   - Check the status of the deployed MySQL pod and service.
   - Access the MySQL database pod and verify that the database and table(s) from `init.sql` exist.
   - Test the persistence by adding data to the database.
   - Delete the pod and ensure it gets recreated.
   - Verify that the data added to the database before deleting the pod still exists after recreation.

# **NOTE**

Before executing the tasks, make sure to replace the placeholders with actual values, such as your MySQL root password, database name, table name, and the path to the MySQL data directory.

