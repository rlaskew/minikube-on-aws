# minikube-on-aws

**Repo Purpose:**  If you've having problems running minikube on AWS, this repo provides a sample solution that you can use as is or as a guide for resolving problems you are having running minikube on AWS. 

**Background:**  Since I use minikube, microk8s, and kubernetes so much, seemed like a good time to create this repo to document how to run minikube on AWS. Over time i hope to expand this repo to do more than the basics

## August 2020 - First major release for this repo 

How to run v1.0 of this repo:
- step 1. provision an ubuntu 20.04 machine on AWS 
- step 2. clone this repo
- step 3. cd into the repo dir, and run "sudo install-minikube-on-aws-using-bash-on-ubuntu-20.sh"
- step 4. logout and log back in
- step 5. run "minikube start" -- defaults to --vm-driver=docker

**Where this has been tested:**  
- August 2020: Right now I've tested this on a linux academy test server using ubuntu 20.04, and which I can tell through AWS meta data uses a T3a.medium 

## Helpful Links

- https://docs.docker.com/engine/install/ubuntu/
- https://kubernetes.io/docs/tasks/tools/install-kubectl/
- https://kubernetes.io/docs/tasks/tools/install-minikube/

