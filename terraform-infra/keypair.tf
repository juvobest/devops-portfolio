resource "tls_private_key" "portfolio_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "portfolio_key" {
  key_name   = "portfolio-key"
  public_key = tls_private_key.portfolio_key.public_key_openssh
}

resource "local_file" "private_key" {
  content  = tls_private_key.portfolio_key.private_key_pem
  filename = "${path.module}/portfolio-key.pem"
  file_permission = "0400"
}
