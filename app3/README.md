# Task: Deploy Mosquitto Service on Kubernetes

In this task, you will deploy the Mosquitto service, an open-source MQTT message broker, on a Kubernetes cluster. You will create the necessary Kubernetes resources, including a Deployment, ConfigMap, and Secret. Once everything is set up, you will verify that the Mosquitto service is running without errors.

## Prerequisites

Before starting this task, make sure you have the following:

1. Access to a functioning Kubernetes cluster.
2. The `kubectl` command-line tool configured to interact with your cluster.

## Instructions

Follow the steps below to deploy the Mosquitto service:

1. **Create ConfigMap**:
   
   - Create a file named `config-map.yaml`.
   - Inside `config-map.yaml`, define the ConfigMap with the necessary configuration settings for the Mosquitto service.
   - For example, you can include the configuration file(s) that the Mosquitto container will use.
   - Apply the ConfigMap to the cluster using the command:

     ```
     kubectl apply -f config-map.yaml
     ```

2. **Create Secret**:
   
   - Create a file named `secret.yaml`.
   - Inside `secret.yaml`, define the Secret with any sensitive information required by the Mosquitto service.
   - For example, you might need to store authentication credentials or access tokens.
   - Apply the Secret to the cluster using the command:

     ```
     kubectl apply -f secret.yaml
     ```

3. **Create Deployment**:
   
   - Create a file named `deployment.yaml`.
   - Inside `deployment.yaml`, define the Kubernetes Deployment for the Mosquitto service.
   - Specify the container image, replicas, and mount the ConfigMap and Secret volumes to appropriate paths in the container.
   - Apply the Deployment to the cluster using the command:

     ```
     kubectl apply -f deployment.yaml
     ```

4. **Verify Deployment**:

   - Check if the Mosquitto Deployment has been successfully created:

     ```
     kubectl get deployments
     ```

   - Ensure that the number of replicas for the Mosquitto service is set to `1`.

5. **Check Pod Status**:

   - Verify that the Mosquitto Pod is running without errors:

     ```
     kubectl get pods
     ```

   - Ensure that the STATUS of the Mosquitto Pod is `Running`.

6. **Access Mosquitto Service**:

   - Once the Mosquitto Pod is running, you can access the Mosquitto service within the cluster.
   - You may use port forwarding or a Kubernetes Service to expose the service externally for testing and access outside the cluster.

7. **Clean Up**:

   - After completing your tests, make sure to delete the deployed resources to avoid unnecessary resource usage:

     ```
     kubectl delete deployment mosquitto
     kubectl delete configmap mosquitto-config-file
     kubectl delete secret mosquitto-secret-file
     ```

Congratulations! You have successfully deployed the Mosquitto service on your Kubernetes cluster. Please ensure that you have correctly configured the `config-map.yaml` and `secret.yaml` files with the required settings and sensitive information before applying them to the cluster. Happy messaging with Mosquitto!