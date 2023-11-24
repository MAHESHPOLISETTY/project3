##################OUTPUT_PUBLIC_IP###############


output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.prj3_mahi_web_instance.public_ip

}


output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.prj3_mahi_webm_instance.public_ip

}

##############PUBLIC_SUBNET_ID##############


output "public_subnet_id" {
  value       = aws_subnet.prj3_mahi_pub_sub.id
  description = "The ID of the subnet."
}

##############PUBLIC_SUBNET_ID##############


output "public_subnet_id2" {
  value       = aws_subnet.prj3_mahi_pub2_sub.id
  description = "The ID of the 2nd subnet."
}


####################WEB_SECURITY_GROUP_ID##########

output "security_group_ids" {
  value = aws_security_group.http-ssh-jenkins.id
}
