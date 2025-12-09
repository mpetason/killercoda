# Install Alternative Cert-Manager Configuration Inside the vCluster

Inside the vCluster, tenants can configure cert-manager resources independently without affecting the host cluster.

## Example: Create a ClusterIssuer with different settings in the vCluster:

`vcluster connect my-vcluster --namespace team-x`{{exec}}

`kubectl apply -f - <<EOF
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: letsencrypt-staging
spec:
  acme:
    server: https://acme-staging-v02.api.letsencrypt.org/directory
    email: admin@example.com
    privateKeySecretRef:
      name: letsencrypt-staging
    solvers:
    - http01:
        ingress: {}
EOF`{{exec}}

List the ClusterIssuers in the vCluster:

`kubectl get clusterissuers`{{exec}}

This shows:
- Host cluster uses self-signed certificates
- vCluster uses Let's Encrypt staging
- No conflicts

This demonstrates full tenant autonomy in certificate management.
