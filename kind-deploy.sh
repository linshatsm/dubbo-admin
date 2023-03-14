#!/bin/bash

# create kind cluster and dubbo-demo ns
kind create cluster
kubectl create ns dubbo-demo

# helm install
helm install dubbo-admin -f ./charts/admin-stack/values.yaml --namespace dubbo-demo ./charts/admin-stack

# helm uninstall
helm uninstall dubbo-admin --namespace dubbo-demo

# port-forward
kubectl -n dubbo-demo port-forward svc/dubbo-admin 8080:38080
# kubectl -n dubbo-demo port-forward svc/zookeeper 2181:2181

# helm uninstall