resource "aws_route_table" "public" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = var.RT-cidr[0]
    gateway_id = aws_internet_gateway.example.id
  }
}



resource "aws_route_table" "private_subnet_route_table" {
  vpc_id = aws_vpc.myvpc.id
}

resource "aws_route" "internet_access" {
  route_table_id = aws_route_table.private_subnet_route_table.id
  destination_cidr_block = var.RT-cidr[0]
  nat_gateway_id = aws_nat_gateway.nat_gateway.id
}