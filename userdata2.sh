#! /bin/bash
sudo yum update -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker >> /home/ec2-user/dckrstatus.txt
sudo chmod 666 /var/run/docker.sock
sudo rpm -ivh https://github.com/aquasecurity/trivy/releases/download/v0.18.3/trivy_0.18.3_Linux-64bit.rpm
sudo yum update -y 