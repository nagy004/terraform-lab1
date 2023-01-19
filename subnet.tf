resource "aws_subnet" "myvpc_subnet" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.subnet-cidr[count.index]
  count = length(var.subnet-cidr)
  tags = {
    Name = var.subnet-name[count.index]
  }
}