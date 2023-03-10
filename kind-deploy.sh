#!/bin/bash

# create kind cluster and dubbo-demo ns
kind create cluster
kubectl create ns dubbo-demo

# helm install
helm install dubbo-admin -f ./charts/admin-stack/values.yaml --namespace dubbo-demo ./charts/admin-stack
