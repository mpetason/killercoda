# Create a vCluster with a Different Kubernetes Distro

vCluster supports running different Kubernetes distros, such as k3s. This is useful for testing lightweight or alternative environments.

Create a namespace for the k3s vCluster:

`kubectl create namespace vcluster-k3s || true`{{exec}}

Create the vCluster using the k3s distro:

`vcluster create vcluster-k3s --namespace vcluster-k3s --distro=k3s`{{exec}}

Connect to the vCluster:

`vcluster connect vcluster-k3s --namespace vcluster-k3s`{{exec}}

Check the Kubernetes version and distro inside the vCluster:

`kubectl version --short`{{exec}}
