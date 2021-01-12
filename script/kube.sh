#!/bin/bash

sudo apt install -y apt-transport-https gnupg2 curl

curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl

echo
echo "Downloaded kubectl..."
kubectl version --client
echo

wget https://get.helm.sh/helm-v3.3.1-linux-amd64.tar.gz
tar -xzvf ./helm-v3.3.1-linux-amd64.tar.gz

sudo mv linux-amd64/helm /usr/local/bin/helm

rm -f ./helm-v3.3.1-linux-amd64.tar.gz
rm -rf linux-amd64
