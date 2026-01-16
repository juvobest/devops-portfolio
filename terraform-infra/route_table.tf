resource "aws_route_table" "public_rt" {
  vpc_id = var.vpc_id

  tags = {
    Name = "portfolio-public-rt"
  }
}
resource "aws_route" "public_internet_access" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.portfolio_igw.id
}
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.public_rt.id
}
