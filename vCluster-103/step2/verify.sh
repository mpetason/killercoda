#!/bin/bash
kubectl get ns vcluster-latest &> /dev/null && vcluster list | grep vcluster-latest && echo "done"
