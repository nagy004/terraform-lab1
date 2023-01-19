resource "aws_route_table_association" "example" {
  subnet_id      = aws_subnet.myvpc_subnet[0].id
  route_table_id = aws_route_table.public.id
}

# resource "aws_route_table_association" "example2" {
#   subnet_id      = aws_subnet.myvpc_subnet[0].id
#   route_table_id = aws_route_table.private_subnet_route_table.id
# }
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.myvpc_subnet[1].id
  route_table_id = aws_route_table.private.id
}