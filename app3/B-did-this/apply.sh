#!/bin/bash
kubectl apply -f mos.secret.yaml
kubectl apply -f mos.config-map.yaml
kubectl apply -f mosquitto.yaml