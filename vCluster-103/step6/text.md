# Cleanup

When you're done, you can remove all the vClusters and namespaces to free up resources.

Delete the vClusters:

`vcluster delete vcluster-latest --namespace vcluster-latest`{{exec}}
`vcluster delete vcluster-old --namespace vcluster-old`{{exec}}
`vcluster delete vcluster-k3s --namespace vcluster-k3s`{{exec}}

Delete the namespaces:

`kubectl delete namespace vcluster-latest`{{exec}}
`kubectl delete namespace vcluster-old`{{exec}}
`kubectl delete namespace vcluster-k3s`{{exec}}
