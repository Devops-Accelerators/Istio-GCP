#bin/bash

# ROUTING BASED ON USER IDENTITY

kubectl apply -f ../istio-files/samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml

kubectl get virtualservice reviews -o yaml

# login as jason and refresh the productpage
# stars re-appear
# login as any other user and the stars will appear no more
