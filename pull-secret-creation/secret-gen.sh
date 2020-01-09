#!/usr/bin/env bash

set -o pipefail
set -e

read -p "Enter namespace [eg: default]: " namespace
read -p "Enter secret-name [eg: my-secret]: " secret_name
read -p "Enter docker-server [eg: my.harbor.com]: " docker_server
read -p "Enter docker-username [eg: admin]: " docker_username
read -p "Enter docker-password [eg: *****]: " docker_password
read -p "Enter docker-email [eg: your_name@your_host.com]: " docker_email

kubectl create namespace "${namespace}" 2>/dev/null || true

kubectl -n "${namespace}" delete secret "${secret_name}" 2>/dev/null || true

kubectl create secret docker-registry "${secret_name}" \
  --docker-server="${docker_server}" \
  --docker-username="${docker_username}" \
  --docker-password="${docker_password}" \
  --docker-email="${docker_email}" \
  -n "${namespace}"

__msg="
======================================================================
You can use command line to show this secret's details.

    kubectl -n ${namespace} get secret ${secret_name} -o yaml

Or you can use command line to delete this secret.

    kubectl -n ${namespace} delete secret ${secret_name}

Good luck!
======================================================================
"

echo "$__msg"
