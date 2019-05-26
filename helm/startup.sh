#!/usr/bin/env bash

helm init --upgrade -i registry.cn-shanghai.aliyuncs.com/yingzhuo/tiller:v2.14.0 \
          --stable-repo-url http://mirror.azure.cn/kubernetes/charts/ \
          --service-account tiller

exit 0