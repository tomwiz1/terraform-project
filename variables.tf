
#Provider Variables
variable "aws_region" {
    type = string 
    default = "us-east-1"
}
variable "aws_proflie" {
    type = string
    default = "default" 
}
#VPC Varibales
variable "aws_vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
}
#SecurityGroup Variables
variable "sg_name" {
    type = string
    default = "SG_public_80" 
}
#Subnets Varibales
variable "app_subnet_1_cidr_block" {
  type = string
  default = "10.0.1.0/24"
}
variable "app_subnet_2_cidr_block" {
  type = string
  default = "10.0.2.0/24"
}

variable "availability_zone_subnet_1" {
    type = string
    default = "us-east-1a"
}
variable "availability_zone_subnet_2" {
    type = string
    default = "us-east-1b"
}
#LoadBalancer Variables
variable "aws_lb_name" {
    type = string
    default = "app-lb" 
}

variable "aws_lb_target_group_name" {
    type = string
    default = "app-target-group"
}
variable "aws_lb_target_group_port" {
    type = number
    default = 80 
}
variable "aws_lb_target_group_protocol" {
    type = string
    default = "HTTP" 
}
variable "aws_lb_listener_port" {
    type = number
    default = 80 
}
variable "aws_lb_listener_protocol" {
    type = string
    default = "HTTP" 
}
variable "aws_lb_listener_default_action_type" {
    type = string
    default = "forward" 
}
#Compute Variables
variable "aws_key_pair_name" {
    type = string
    default = "aws_key"
}
variable "aws_key_pair_public" {
    type = string
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDxukL7UOIwsDDEOs34D+QNSoO6xTJsAhtmim2puDwe4eTRxFk6WxDnVLvVx91u4oWif2G+mz+b+LEvWDHX0poXk75v0vx8KlM76HgZ4Delfq3xIFQj/H7Dw9lG6U9zzgMgrLuJ2r7ktE9uHPIuJokdCVcw4lXztlg+GZlBuB66xdZ8UxvGAWfI1gM9vLE5IYHxqf7gtv5XZJCb7fEgsjFCCEtc1S/v1V8hn8biVUqU2S7OYjdsI1gAJMAwAA1mXjgJq0GFjKAdpTMVGpJMuXQIEJHoCJfnODR9baoHq+aRPnB9rIjwHmJKvxm9gl/3lBEWBDf6zvTMgSLKyioiv/puOpMiMLAfCYmRkUuPlMBV7qswLFwj9rNNVE7ORZHA/IhdWdNKWQwSEf3wZefpsKtK4bqxcW59mQs2pErnyFUyzwLRI8HxzXiffgpOvTOkjkmUi8IYYxbo7HFTtVc+NC3CoSBagFXn0O+hKALLRgtE6k+2FNySHG9XrPfig8JPRCE= user@LAPTOP-NRCVIFQ6"
}
variable "aws_launch_template_name_prefix" {
    type = string
    default = "hello_world_app" 
}
variable "aws_launch_template_instance_type" {
    type = string
    default = "t3.nano" 
}
variable "aws_launch_template_image_id" {
    type = string
    default = "ami-0c02fb55956c7d316" 
}