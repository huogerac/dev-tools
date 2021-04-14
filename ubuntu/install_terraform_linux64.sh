#!/bin/bash

# Download terraform (check https://www.terraform.io/downloads.html for new versions)
cd /tmp
wget https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip
unzip terraform_0.12.21_linux_amd64.zip
sudo cp terraform /usr/local/bin
terraform -version
cd -