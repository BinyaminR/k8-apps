#!/bin/bash
 minikube start

 kubectl apply -f mongo.yaml
 kubectl apply -f webapp.yaml
 kubectl apply -f mongo-config.yaml
 kubectl apply -f mongo-secret.yaml

 sleep 15

# Function to check if all pods are running
function check_pods_running() {
  local namespace="$1"
  local running_pods=$(kubectl get pods -n "$namespace" --field-selector=status.phase=Running --no-headers | wc -l)
  local total_pods=$(kubectl get pods -n "$namespace" --no-headers | wc -l)

  if [ "$running_pods" -eq "$total_pods" ]; then
    return 0
  else
    return 1
  fi
}

# Namespace where the pods are running
NAMESPACE="default"

# Wait until all pods are running
while ! check_pods_running "$NAMESPACE"; do
  echo "Waiting for all pods to be in Running state..."
  sleep 5
done

# Once all pods are running, execute the desired command
minikube service webapp-service
