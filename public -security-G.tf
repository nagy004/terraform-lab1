resource "aws_security_group" "public-SC" {
  vpc_id = "vpc-0f2b98b464d200957"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}