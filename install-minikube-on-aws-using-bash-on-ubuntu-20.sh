#!/bin/bash


echo "###############"
echo "###"
echo "### update packages on Ubuntu 20"
echo "###"
echo "###############"
apt-get update -y
apt-get upgrade -y
echo "###############"
echo "###"
echo "### download and mv kubectl"
echo "### commands direct from https://kubernetes.io/docs/tasks/tools/install-kubectl/"
echo "###"
echo "###############"
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl

echo "###############"
echo "###"
echo "### finally print version of kubectl client"
echo "###"
echo "###############"
kubectl version --client
echo "###############"
echo "###"
echo "### Download and mv/install minikube"
echo "### directions direct from https://kubernetes.io/docs/tasks/tools/install-minikube/"
echo "###"
echo "###############"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
mkdir -p /usr/local/bin/
install minikube /usr/local/bin/
rm minikube
echo "###############"
echo "###"
echo "### Check minikube status"
echo "###"
echo "###############"
minikube status
