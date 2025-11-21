# Deploy a Sample App to Each vCluster

Let's deploy a simple NGINX app to each vCluster to see how workloads behave across versions and distros.

Switch to the latest version vCluster:

`vcluster connect vcluster-latest --namespace vcluster-latest`{{exec}}

Deploy NGINX:

`kubectl create deployment nginx --image=nginx`{{exec}}

Switch to the old version vCluster:

`vcluster connect vcluster-old --namespace vcluster-old`{{exec}}

Deploy NGINX:

`kubectl create deployment nginx --image=nginx`{{exec}}

Switch to the k3s vCluster:

`vcluster connect vcluster-k3s --namespace vcluster-k3s`{{exec}}

Deploy NGINX:

`kubectl create deployment nginx --image=nginx`{{exec}}

Check the pods in each vCluster to confirm the app is running:

`kubectl get pods`{{exec}}
