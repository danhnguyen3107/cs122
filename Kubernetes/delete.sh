#!/bin/bash

kubectl delete deployment blogapp-deployment --namespace=default

kubectl delete statefulset postgres-deployment  --namespace=default

#kubectl delete deployment postgres-deployment --namespace=default

kubectl delete service blogapp-service postgres-service --namespace=default


kubectl delete configmap blogapp-config --namespace=default

kubectl delete secret blogapp-secrets --namespace=default



kubectl delete PersistentVolume local-postgres-pv
kubectl delete PersistentVolumeClaim postgres-pvc
kubectl delete StorageClass local-storage



