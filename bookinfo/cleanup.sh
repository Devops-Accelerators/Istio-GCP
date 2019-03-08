#!bin/bash

kubectl -n istio-system delete service istio-ingressgateway
gcloud compute forwarding-rules list
gcloud container clusters delete istio-demo
