########################################################################
cd ~/gitrepo/googleimages
ls
mkdir -p api-server
mkdir -p scheduler
mkdir -p controller-manager
mkdir -p proxy
mkdir -p etcd
mkdir -p addon
mkdir -p coredns
mkdir -p dns-dnsmasq
mkdir -p dns-sidecar
mkdir -p dns-kube
mkdir -p pause
mkdir -p dashboard
mkdir -p storage-provisioner
cd api-server/
cat <<EOF > Dockerfile
FROM k8s.gcr.io/kube-apiserver-amd64:v1.10.0
MAINTAINER 13910128582@139.com
EOF
cd ../scheduler/
cat <<EOF > Dockerfile
FROM k8s.gcr.io/kube-scheduler-amd64:v1.10.0
MAINTAINER 13910128582@139.com
EOF
cd ../controller-manager
cat <<EOF > Dockerfile
FROM k8s.gcr.io/kube-controller-manager-amd64:v1.10.0
MAINTAINER 13910128582@139.com
EOF
cd ../proxy/
cat <<EOF > Dockerfile
FROM k8s.gcr.io/kube-proxy-amd64:v1.10.0
MAINTAINER 13910128582@139.com
EOF
cd ../etcd/
cat <<EOF > Dockerfile
FROM k8s.gcr.io/etcd-amd64:3.1.12
MAINTAINER 13910128582@139.com
EOF
cd ../addon/
cat <<EOF > Dockerfile
FROM k8s.gcr.io/kube-addon-manager:v8.6
MAINTAINER 13910128582@139.com
EOF
cd ../coredns/
cat <<EOF > Dockerfile
FROM k8s.gcr.io/coredns:1.2.2
MAINTAINER 13910128582@139.com
EOF
cd ../pause/
cat <<EOF > Dockerfile
FROM k8s.gcr.io/pause-amd64:3.1
MAINTAINER 13910128582@139.com
EOF
cd ../dashboard/
cat <<EOF > Dockerfile
FROM k8s.gcr.io/kubernetes-dashboard-amd64:v1.8.1
MAINTAINER 13910128582@139.com
EOF
cd ../storage-provisioner/
cat <<EOF > Dockerfile
FROM gcr.io/k8s-minikube/storage-provisioner:v1.8.1
MAINTAINER 13910128582@139.com
EOF
cd ../dns-dnsmasq/
cat <<EOF > Dockerfile
FROM k8s.gcr.io/k8s-dns-dnsmasq-nany-amd64:v1.14.8
MAINTAINER 13910128582@139.com
EOF
cd ../dns-sidecar/
cat <<EOF > Dockerfile
FROM k8s.gcr.io/k8s-dns-sidecar-amd64:v1.14.8
MAINTAINER 13910128582@139.com
EOF
cd ../dns-kube/
cat <<EOF > Dockerfile
FROM k8s.gcr.io/k8s-dns-kube-dns-amd64:v1.14.8
MAINTAINER 13910128582@139.com
EOF
########################################################################
