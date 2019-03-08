#bin/bash

# ROUTING ALL OF THE TRAFFIC TO A SPECIFIC VERSION OF THE SERVICE

kubectl apply -f ../istio-files/samples/bookinfo/networking/virtual-service-all-v1.yaml

kubectl get virtualservices -o yaml

kubectl get destinationrules -o yaml

# refresh the productpage of bookinfo
# no rating stars are displayed
