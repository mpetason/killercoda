# Create a vCluster with an Older Kubernetes Version

Sometimes you need to test your app on an older Kubernetes version for compatibility. Let's spin up a vCluster with a previous version (e.g., 1.24.0).

Create a namespace for the old version vCluster:

`kubectl create namespace vcluster-old || true`{{exec}}

Create the vCluster specifying the version:

`vcluster create vcluster-old --namespace vcluster-old --kubernetes-version=1.24.0`{{exec}}

Connect to the vCluster:

`vcluster connect vcluster-old --namespace vcluster-old`{{exec}}

Check the Kubernetes version inside the vCluster:

`kubectl version --short`{{exec}}
