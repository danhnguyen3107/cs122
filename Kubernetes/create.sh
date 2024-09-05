#!/bin/bash

kubectl apply -f configmap-postgresql.yaml
kubectl apply -f secret-postgresql.yaml

#kubectl apply -f postgres-deployment.yaml
kubectl apply -f postgres-statefulset.yaml
kubectl apply -f postgres-service.yaml

kubectl apply -f blogapp-deployment.yaml
kubectl apply -f blogapp-service.yaml

kubectl apply -f persistentvolume.yaml
kubectl apply -f storageclass.yaml
kubectl apply -f persistentvolumeclaim.yaml


