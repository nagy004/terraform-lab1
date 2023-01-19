resource "aws_internet_gateway" "example" {
  vpc_id = aws_vpc.myvpc.id
}

#for nat gatway
# resource "aws_eip" "nat_eip" {}

# resource "aws_nat_gateway" "nat_gateway" {
#   allocation_id = aws_eip.nat_eip.id
#   subnet_id = aws_subnet.myvpc_subnet[0].id
# }

resource "aws_eip" "example" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.example.id
  subnet_id     = aws_subnet.myvpc_subnet[0].id
}