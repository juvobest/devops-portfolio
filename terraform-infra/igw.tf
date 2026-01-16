resource "aws_internet_gateway" "portfolio_igw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "portfolio-igw"
  }
}
