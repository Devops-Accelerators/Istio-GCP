#!bin/bash

gcloud components install kubectl

gcloud config set project gcloudstarter-232905
gcloud config set compute/zone us-central1-b

gcloud container clusters create istio-tutorial \
    --machine-type=n1-standard-2 \
    --num-nodes=4 \


kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole=cluster-admin \
  --user="$(gcloud config get-value core/account)"
  
 
 wget https://github.com/istio/istio/releases/download/1.1.0-rc.1/istio-1.1.0-rc.1-linux.tar.gz
 tar -xvf istio-1.1.0-rc.1-linux.tar.gz
 mv istio-1.1.0-rc.1 istio
 rm istio-1.1.0-rc.1-linux.tar.gz
 
 export PATH=$PATH:$(pwd)/istio/bin
 
 cd istio
 kubectl apply -f install/kubernetes/istio-demo-auth.yaml
