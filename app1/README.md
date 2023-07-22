# Project Setup and Deployment Guide

This repository contains a bash script to deploy a Kubernetes application using Minikube. The script automates the process of starting Minikube and deploying the required resources for running a web application along with MongoDB.

## Prerequisites

Before running the script, please ensure you have the following tools installed:

- [Minikube](https://minikube.sigs.k8s.io/docs/start/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

run ./apply-all.sh

## Deployment Steps

1. Starts Minikube:

```bash
minikube start
```

2. Deploys the required Kubernetes resources by applying the YAML files:

```bash
kubectl apply -f mongo.yaml
kubectl apply -f webapp.yaml
kubectl apply -f mongo-config.yaml
kubectl apply -f mongo-secret.yaml
```

3. Waits for 15 seconds to allow the pods to initialize:

```bash
sleep 15
```

4. Checks if all pods are running:

```bash
# Function to check if all pods are running
function check_pods_running() {
  # ... (the function implementation is provided in the script) ...
}

# Namespace where the pods are running
NAMESPACE="default"

# Wait until all pods are running
while ! check_pods_running "$NAMESPACE"; do
  echo "Waiting for all pods to be in Running state..."
  sleep 5
done
```

5. Once all pods are in the "Running" state, it executes the following command to access the web application:

```bash
minikube service webapp-service
```

This will open the web application in your default web browser.

## Notes

- The provided script assumes that you have the necessary Kubernetes YAML files (`mongo.yaml`, `webapp.yaml`, `mongo-config.yaml`, `mongo-secret.yaml`) in the current working directory. Make sure these files are present and correctly configured before running the script.

- Adjust the `sleep` duration as needed to allow sufficient time for the pods to initialize before checking their status.

- The script is configured to use the `default` namespace for deploying resources. If you want to use a different namespace, modify the `NAMESPACE` variable accordingly in the script.

Happy Kubernetes deployment! If you encounter any issues or have any questions, feel free to reach out for assistance.