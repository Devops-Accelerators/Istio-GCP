#bin/bash


#configuring project

gcloud config set project gcloudstarter-232905
gcloud config set compute/zone us-central1-b

#Creating the GKE-Cluster with Istio Components installed

gcloud beta container clusters create istio-demo \
    --addons=Istio --istio-config=auth=MTLS_STRICT \
    --cluster-version=1.11.6-gke.6 \
    --machine-type=n1-standard-2 \
    --num-nodes=4

#Verifying Cluster

gcloud container clusters list
