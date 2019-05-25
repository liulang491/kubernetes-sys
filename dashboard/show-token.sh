#!/usr/bin/env bash

kubectl -n kube-system get secret | grep admin-toke | awk '{print $1}' | xargs kubectl -n kube-system describe secret | grep token: | awk -F ' ' '{print $2}'
