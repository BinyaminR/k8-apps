# Task: Deploy MongoDB and Mongo Express on Kubernetes

In this task, your goal is to deploy MongoDB, an open-source NoSQL database, and Mongo Express, a web-based user interface for managing MongoDB, on a Kubernetes cluster. You will need to create the necessary YAML configuration files to set up the required resources. The following files must be created:

1. **mongo.yaml**:

   This YAML file contains the Kubernetes Deployment and Service configurations for MongoDB. It sets up a single MongoDB instance within the cluster.

2. **mongo-express.yaml**:

   This YAML file contains the Kubernetes Deployment and Service configurations for Mongo Express. Mongo Express provides a web-based interface for managing the MongoDB database.

3. **mongo-configmap.yaml**:

   This YAML file contains the Kubernetes ConfigMap configuration for MongoDB. The ConfigMap holds the MongoDB database URL, which the Mongo Express container will use to connect to the MongoDB instance.

4. **mongo-secret.yaml**:

   This YAML file contains the Kubernetes Secret configuration for MongoDB. Secrets are used to securely store sensitive information, such as the MongoDB root username and password.

Follow these steps to deploy the MongoDB and Mongo Express services on your Kubernetes cluster:

1. Create the `mongo.yaml`, `mongo-express.yaml`, `mongo-configmap.yaml`, and `mongo-secret.yaml` files with the required configuration.

2. Apply the `mongo.yaml` file to create the MongoDB Deployment and Service:

   ```
   kubectl apply -f path/to/mongo.yaml
   ```

3. Apply the `mongo-express.yaml` file to create the Mongo Express Deployment and Service:

   ```
   kubectl apply -f path/to/mongo-express.yaml
   ```

4. Apply the `mongo-configmap.yaml` file to create the MongoDB ConfigMap:

   ```
   kubectl apply -f path/to/mongo-configmap.yaml
   ```

5. Apply the `mongo-secret.yaml` file to create the MongoDB Secret:

   ```
   kubectl apply -f path/to/mongo-secret.yaml
   ```

6. Access the Mongo Express web interface:

   Find the external IP of the `mongo-express-service` using the following command:

   ```
   kubectl get services mongo-express-service
   ```

   Open a web browser and navigate to `http://EXTERNAL_IP:8081`. Use the MongoDB root username and password from the Secret to log in and manage the MongoDB instance.

7. If you no longer need the deployed resources, you can clean them up by running the appropriate `kubectl delete` commands for the Deployments, Services, ConfigMaps, and Secrets.

Good luck with your deployment! Customize the configuration files to suit your specific use case and security requirements.