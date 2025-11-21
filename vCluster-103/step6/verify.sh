#!/bin/bash
vcluster list | grep -q vcluster-latest || vcluster list | grep -q vcluster-old || vcluster list | grep -q vcluster-k3s || echo "done"
