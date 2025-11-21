#!/bin/bash
kubectl get ns vcluster-old &> /dev/null && vcluster list | grep vcluster-old && echo "done"
