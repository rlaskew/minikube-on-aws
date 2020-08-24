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
echo "### Install Docker"
echo "### https://docs.docker.com/engine/install/ubuntu/"
echo "###"
echo "###############"
apt-get remove docker docker-engine docker.io containerd runc -y
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
apt-get update -y
apt-get install docker-ce docker-ce-cli containerd.io -y
usermod -aG docker cloud_user   	
#usermod -aG docker ubuntu  	
systemctl stop docker
systemctl start docker
sysctl fs.protected_regular=0
#apt-get install conntrack 
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
echo "###############"
echo "###"
echo "### Remeber to logout and logback in if you want to use docker command with 'ubuntu' user, without using sudo"
echo "###"
echo "###############"
