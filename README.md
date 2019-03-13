# Istio on Google Kubernetes Engine

This accelerator creates a GKE Cluster with Istio installed in it (Beta) and then deploys the micro-services based application called BookInfo. The accelerator can also be used to see ***Istio Traffic Management Features*** such as ***Request Routing*** and ***Traffic Shifting*** in action. 

A brief description on how to achieve the same is provided below. 


## Steps and How To

### A) Creating a GKE Cluster with Istio installed. 
Clone the repository to your machine and move to the folder Bookinfo. 
Run the **01-infra-setup.sh** file using the command 
```
sh 01-infra-setup.sh
```

### B) Deploying the BookInfo Application on the GKE Cluster
Run the **02-Deploy-BookInfo.sh** file using the command 
```
sh 02-Deploy-BookInfo.sh
```
