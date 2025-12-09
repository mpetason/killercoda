# Install Additional CRD Resources in the Host Cluster

The host cluster may configure additional cert-manager resources or CRD features for specific use cases.

## Example: Create a ClusterIssuer resource on the host:

`vcluster disconnect`{{exec}}

`kubectl create namespace cert-manager 2>/dev/null || true`{{exec}}

`kubectl apply -f - <<EOF
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: selfsigned
spec:
  selfSigned: {}
EOF`{{exec}}

List the ClusterIssuers:

`kubectl get clusterissuers`{{exec}}

The host now contains Cert-Manager resources configured for its specific needs.

This illustrates how operators accumulate configuration in platform clusters and why isolation matters.
