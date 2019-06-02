#!/usr/bin/env bash

POD_NAME=$(kubectl --namespace=default get pod | grep -E 'busybox-' | awk '{print $1}')
kubectl --namespace=default exec -it ${POD_NAME} -- /bin/sh

exit 0