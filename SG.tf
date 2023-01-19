
resource "aws_security_group" "public-SG" {
  name = var.SG-name
  description = "Allow HTTP and SSH traffic via Terraform"
  vpc_id = aws_vpc.myvpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.RT-cidr[0]]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.RT-cidr[0]]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.RT-cidr[0]]
  }
}


#private SG

resource "aws_security_group" "private-SG" {
  # name = var.SG-name
  description = "Allow HTTP and SSH traffic via Terraform"
  vpc_id = aws_vpc.myvpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.RT-cidr[0]]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.RT-cidr[0]]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.RT-cidr[0]]
  }
}



