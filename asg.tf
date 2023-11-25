
#############CREATING_ASG########################
##
#######SETTING_UP_LAUNCH_TEMPLATE################

resource "aws_launch_configuration" "prj3_mahi_lc" {
  name_prefix   = "prj3-lc-1"
  image_id      = "ami-0e8a34246278c21e4" # Replace with your desired AMI ID
  instance_type = "t2.micro"              # Replace with your desired instance type
}

################SETTING_UP_ASG#############

resource "aws_autoscaling_group" "prj3_mahi_asg" {
  name                 = "prj3-asg"
  min_size             = 1
  max_size             = 5
  desired_capacity     = 1
  launch_configuration = aws_launch_configuration.prj3_mahi_lc.name
  vpc_zone_identifier  = [aws_subnet.prj3_mahi_pub_sub.id, aws_subnet.prj3_mahi_pub2_sub.id] # Replace with your desired subnet IDs
}

#################DEFINING_SCALING_POLICY##############

resource "aws_autoscaling_policy" "prj3_mahi_sp" {
  name                   = "prj3-scale-policy"
  policy_type            = "SimpleScaling"
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = 1
  autoscaling_group_name = aws_autoscaling_group.prj3_mahi_asg.name

}
