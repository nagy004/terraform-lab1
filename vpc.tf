# Create a VPC
resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc-cidr[0]
 # description="this is the vpc cidr variable"
}