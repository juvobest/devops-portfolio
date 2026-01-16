resource "aws_instance" "portfolio_ec2" {
  ami                         = "ami-0f321d890424a6390"
  instance_type               = "t2.micro"
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.portfolio_sg.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.portfolio_key.key_name

user_data = <<-EOF
#!/bin/bash
apt-get update -y
apt-get install -y docker.io
systemctl enable docker --now
docker run -d -p 80:80 --name simple-site ${var.docker_image}
EOF


  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "portfolio-terraform-instance"
  }
}
