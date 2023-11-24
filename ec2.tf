###APP_SERVER_INSTANCE######

resource "aws_instance" "prj3_mahi_web_instance" {
  ami           = "ami-0e8a34246278c21e4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.prj3_mahi_pub_sub.id
  key_name      = "prj3"
  #count                  = 1
  vpc_security_group_ids = [aws_security_group.http-ssh-jenkins.id]
  user_data              = file("userdata2.sh")
}

###MASTER_SERVER_INSTANCE######

resource "aws_instance" "prj3_mahi_webm_instance" {
  ami           = "ami-0e8a34246278c21e4"
  instance_type = "t2.medium"
  subnet_id     = aws_subnet.prj3_mahi_pub_sub.id
  key_name      = "prj3"
  #count                  = 1
  vpc_security_group_ids = [aws_security_group.http-ssh-jenkins.id]
  user_data              = file("userdata.sh")
}


