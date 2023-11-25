#! /bin/bash
sudo yum update -y
sudo yum install git -y
sudo yum -y install python3 >> /home/ec2-user/pythonstatus.txt
sudo yum -y install python3-pip >> /home/ec2-user/pip3status1.txt
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade -y
sudo yum -y install java-17*
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins >> /home/ec2-user/jnknsstatus.txt
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker >> /home/ec2-user/dckrstatus.txt
sudo chmod 666 /var/run/docker.sock
sudo rpm -ivh https://github.com/aquasecurity/trivy/releases/download/v0.18.3/trivy_0.18.3_Linux-64bit.rpm ##for installing trivy
sudo yum update -y 



