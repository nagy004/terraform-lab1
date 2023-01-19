resource "aws_route_table_association" "example" {
  subnet_id      = aws_subnet.myvpc_subnet[0].id
  route_table_id = aws_route_table.public.id
}