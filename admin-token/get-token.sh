#!/usr/bin/env bash

kubectl -n kube-system get secret | grep admin-toke | awk '{print $1}' | xargs kubectl -n kube-system describe secret

exit 0