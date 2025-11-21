#!/bin/bash
kubectl get ns vcluster-k3s &> /dev/null && vcluster list | grep vcluster-k3s && echo "done"
