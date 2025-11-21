# Create a vCluster with the Latest Kubernetes Version

Let's create a vCluster using the latest available Kubernetes version. This is useful for testing new features or ensuring your app works with the newest APIs.

Create a namespace for your vCluster:

`kubectl create namespace vcluster-latest || true`{{exec}}

Create the vCluster specifying the latest version (replace X.Y.Z with the latest version if needed):

`vcluster create vcluster-latest --namespace vcluster-latest --kubernetes-version=latest`{{exec}}

Connect to the vCluster:

`vcluster connect vcluster-latest --namespace vcluster-latest`{{exec}}

Check the Kubernetes version inside the vCluster:

`kubectl version --short`{{exec}}
