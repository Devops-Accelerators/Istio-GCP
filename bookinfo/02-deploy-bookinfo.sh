#!bin/bash

#Downloading Istio release repositiory and configuring istioctl
wget https://github.com/istio/istio/releases/download/1.1.0-rc.1/istio-1.1.0-rc.1-linux.tar.gz
tar -xvf istio-1.1.0-rc.1-linux.tar.gz
mv istio-1.1.0-rc.1 istio
rm istio-1.1.0-rc.1-linux.tar.gz
export PATH=$PATH:$(pwd)/istio/bin 

cd istio

#kubectl apply -f install/kubernetes/istio-demo-auth.yam

#Deploying BookInfo Application to GKE Cluster
kubectl apply -f <(istioctl kube-inject -f samples/bookinfo/platform/kube/bookinfo.yaml)


#Creating ingress gateway
kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml

kubectl get svc istio-ingressgateway -n istio-system


#export GATEWAY_URL=35.239.7.64:80
#curl -I http://${GATEWAY_URL}/productpage
