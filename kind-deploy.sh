#!/bin/bash

# create kind cluster and dubbo-demo ns
kind create cluster
kubectl create ns dubbo-demo

# helm install
helm install dubbo-admin -f ./charts/admin-stack/values.yaml --namespace dubbo-demo ./charts/admin-stack

# port-forward
kubectl -n dubbo-demo port-forward svc/dubbo-admin 8080:38080