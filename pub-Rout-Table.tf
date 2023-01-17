resource "aws_route_table" "public" {
  vpc_id = "vpc-0f2b98b464d200957"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0096ae53b1198675a"
  }
}
