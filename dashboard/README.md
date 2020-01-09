## dashboard

### 安装

```bash
kubectl apply -f ./01-kubernetes-dashboard.yaml
kubectl apply -f ./02-admin-for-login.yaml
```

**注意:** dashboard初始化自身需要花费一定时间，要耐心等待3到5分钟。


### 注意事项

* (1) 由于`gcr.io`在中国大陆地区无法直接访问，本人将dashboard所需镜像搬迁至阿里云。
* (2) 如何获取登录令牌:

    ```bash
    bash ./show-token.sh
    ```

### 参考
 
 * [Github](https://github.com/kubernetes/dashboard)
