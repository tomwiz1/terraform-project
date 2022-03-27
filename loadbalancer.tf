
resource "aws_lb" "app_lb" {
  name       = var.aws_lb_name
  subnets    = [aws_subnet.app_subnet_1.id, aws_subnet.app_subnet_2.id]
  security_groups = [aws_security_group.SG_public_80.id]

  tags = {
    Name = "app-loadbalancer"
  }
}

resource "aws_lb_target_group" "app_target_group" {
  name     = var.aws_lb_target_group_name
  port     = var.aws_lb_target_group_port
  protocol = var.aws_lb_target_group_protocol
  vpc_id   = aws_vpc.app_vpc.id
}

resource "aws_lb_listener" "app_listener" {
  load_balancer_arn = aws_lb.app_lb.arn
  port              = var.aws_lb_listener_port
  protocol          = var.aws_lb_listener_protocol
  
  default_action {
    type             = var.aws_lb_listener_default_action_type
    target_group_arn = aws_lb_target_group.app_target_group.arn
  }
}
