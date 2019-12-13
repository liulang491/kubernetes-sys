## prometheus

### 安装

```bash
kubectl -f ./prometheus.yaml
```

### 访问

* (1) prometheus: `http://<k8s-master-host>:39090/`
* (2) grafana: `http://<k8s-master-host>:33000/`
    * default username: `admin`
    * default password: `admin`
    * prometheus-datasource: `http://prometheus.prometheus.svc.cluster.local:9090`