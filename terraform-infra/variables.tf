variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"   # using London
}

variable "subnet_id" {
  description = "Existing public subnet ID"
  type        = string
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
}

variable "docker_image" {
  description = "Docker image to deploy"
  type        = string
  default     = "juvobest/simple-site:v1"
}
