variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}
variable "subnet_id" {
  description = "Subnet to launch EC2 into"
  type        = string
}
variable "vpc_id" {
  description = "VPC where EC2 will be deployed"
  type        = string
}
variable "docker_image" {
  type = string
  default = "juvobest/simple-site:v1"
}

