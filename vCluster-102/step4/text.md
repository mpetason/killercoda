# Install Cert-Manager CRD in the Host Cluster

In this step, we simulate a real-world scenario where the platform team installs Cert-Manager at the cluster level. Cert-Manager is a widely-used certificate management operator that has evolved through multiple CRD versions.

## Verify the context to make sure we are on the host cluster:

`kubectx`{{exec}}

The output should show kubernetes-admin@kubernetes in green.

## Install Cert-Manager v1.14 on the host:

`kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.14.0/cert-manager.crds.yaml`{{exec}}

Inspect the CRD:

`kubectl get crd certificates.cert-manager.io -o yaml | head -30|grep "app.kubernetes.io/version:"`{{exec}}

List all cert-manager CRDs:

`kubectl get crds | grep cert-manager`{{exec}}

## Result:

The host cluster now runs Cert-Manager v1.14.0 with its corresponding CRD versions.

This is a common scenario in shared cluster environments where the platform team manages a specific version.
