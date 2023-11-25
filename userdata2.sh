#! /bin/bash
sudo yum update -y
sudo yum -y install docker
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker >> /home/ec2-user/dckrstatus.txt
sudo chmod 666 /var/run/docker.sock
sudo rpm -ivh https://github.com/aquasecurity/trivy/releases/download/v0.18.3/trivy_0.18.3_Linux-64bit.rpm ###u can keep this or u can ignore this step as anyway we are scanning it in master before pushing it to docker 
sudo yum update -y 
