## dashboard

### 安装

```bash
kubectl apply -f ./kubernetes-dashboard.yaml
```

**注意:** dashboard初始化自身需要花费一定时间，要耐心等待3到5分钟。


### 创建登录令牌

```bash
kubectl create serviceaccount dashboard-admin-sa

kubectl create clusterrolebinding dashboard-admin-sa \
    --clusterrole=cluster-admin --serviceaccount=default:dashboard-admin-sa

kubectl get secrets
```

### 参考
 
 * [Github](https://github.com/kubernetes/dashboard)
