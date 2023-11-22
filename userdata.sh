#! /bin/bash
sudo yum update -y
sudo yum install -y httpd git
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd >> /home/ec2-user/httpdstatus.txt
sudo yum -y install python3 >> /home/ec2-user/pythonstatus.txt

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



