output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.portfolio_ec2.public_ip
}
output "docker_image_version" {
  value = var.docker_image
}

