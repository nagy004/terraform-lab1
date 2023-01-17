resource "aws_instance" "example" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id     = "subnet-0b97dfcf58ba3bd01"
  vpc_security_group_ids = ["sg-0fd580bed6e8c935b"]

  tags = {
    Name = "terra-ec2"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y httpd
              sudo systemctl start httpd
              sudo systemctl enable httpd
              EOF
}