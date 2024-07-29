#!/bin/bash
# Install dependencies
sudo apt-get update -y
sudo apt-get install -y curl apt-transport-https gnupg lsb-release
sudo apt-get install -y openjdk-21-jdk 
# Download and install HashiCorp GPG key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
# Add HashiCorp official repository
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list > /dev/null
# Update apt cache and install Terraform
sudo apt-get update
sudo apt-get install terraform -y

#Install unzip and  aws cli
sudo apt install unzip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

Lucky Akokoba 0:22
#!/bin/bash
# Install dependencies
sudo apt-get update
sudo apt-get install -y curl apt-transport-ht
sudo apt-get -y install openjdk-17-jdk
# Download and install Jenkins GPG key
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/n
# Add Jenkins repository
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/n
# Update apt cache and install Jenkins
sudo apt-get update
sudo apt-get install -y jenkins
#Start Jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins