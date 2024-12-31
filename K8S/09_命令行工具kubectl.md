# kubectl命令行工具
Kubernetes 提供 kubectl 是使用 Kubernetes API 与 Kubernetes 集群的控制面进行通信的命令行工具。

这个工具叫做 kubectl。

更多命令：[https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)

## 1 自动补全
    kubectl completion bash >/etc/bash_completion.d/kubectl
    kubeadm completion bash >/etc/bash_completion.d/kubeadm

## 2 在任意节点使用kubectl
    # 1.拷贝admin.conf
    将 master 节点中 /etc/kubernetes/admin.conf 拷贝到需要运行的服务器的 /etc/kubernetes 目录中
    scp /etc/kubernetes/admin.conf root@k8s-node1:/etc/kubernetes

    # 2. 配置KUBECONFIG环境变量
    在需要的运行的服务器撒花姑娘
    echo "export KUBECONFIG=/etc/kubernetes/admin.conf" >> ~/.bash_profile
    source ~/.bash_profile

## 3 资源操作
### 3.1 创建对象
### 3.2 显示和查找资源
### 3.3 修补资源
