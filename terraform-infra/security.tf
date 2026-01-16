resource "aws_security_group" "portfolio_sg" {
  name        = "portfolio-security-group"
  description = "Security group for Terraform portfolio EC2"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH from anywhere (optional: can restrict)
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "portfolio-security-group"
  }
}

 
output "web_url" {
  value = "http://${aws_instance.portfolio_ec2.public_ip}"
  description = "Public URL for the Nginx web server"
}

