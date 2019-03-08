#!bin/bash

#Configuring GCP Project details

gcloud config set project gcloudstarter-232905
gcloud config set compute/zone us-central1-b


#Creating GKE Cluster
gcloud container clusters create istio-tutorial \
    --machine-type=n1-standard-2 \
    --num-nodes=4 \


#Creating ClusterRolebinding	
kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole=cluster-admin \
  --user="$(gcloud config get-value core/account)"

  
#Installing Istio 
  
kubectl apply -f install/kubernetes/istio-demo-auth.yaml


#Verifying Istio installation

kubectl get service -n istio-system
kubectl get pods -n istio-system


#Deploying the BookInfo sample application

kubectl apply -f <(istioctl kube-inject -f samples/bookinfo/platform/kube/bookinfo.yaml)
kubectl get services
kubectl get pods


#Defining Ingress Gateway Routing for the application 
kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml


#Getting Ingress IP and port
kubectl get svc istio-ingressgateway -n istio-system


#curl -I http://${GATEWAY_URL}/productpage
