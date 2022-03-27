
resource "aws_key_pair" "deployer" {
  key_name   = var.aws_key_pair_name
  public_key = var.aws_key_pair_public
}

resource "aws_launch_template" "app_launch_template" {
  name_prefix                 = var.aws_launch_template_name_prefix
  image_id                    = var.aws_launch_template_image_id
  instance_type               = var.aws_launch_template_instance_type
  key_name                    = var.aws_key_pair_name
  user_data                   = filebase64("createwebsite.sh")
  network_interfaces {
    associate_public_ip_address = true
    security_groups = [aws_security_group.SG_public_80.id]
   }
}
resource "aws_autoscaling_group" "app_autoscaling_group" {
  name                    = "app_autoscaling_group"
  vpc_zone_identifier     = [aws_subnet.app_subnet_1.id, aws_subnet.app_subnet_2.id]
  desired_capacity        = 2
  max_size                = 2
  min_size                = 2
  target_group_arns      = [aws_lb_target_group.app_target_group.arn]
  launch_template {
    id      =  aws_launch_template.app_launch_template.id
    version = "$Latest"

  }
}

resource "aws_autoscaling_policy" "app_autoscaling_policy" {
  name                   = "app_autoscaling_policy"
  scaling_adjustment     = 4
  adjustment_type        = "ExactCapacity"
  autoscaling_group_name = aws_autoscaling_group.app_autoscaling_group.name
}



