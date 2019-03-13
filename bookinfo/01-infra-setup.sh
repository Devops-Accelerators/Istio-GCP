#!bin/bash

kubectl apply -f <(istioctl kube-inject -f samples/bookinfo/platform/kube/bookinfo.yaml)

kubectl get services

kubectl get pods

kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml

kubectl get svc istio-ingressgateway -n istio-system

#export GATEWAY_URL=35.239.7.64:80

#curl -I http://${GATEWAY_URL}/productpage
