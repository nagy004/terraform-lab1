resource "aws_instance" "ec2" {
  ami           = var.image-type
  instance_type = var.ec2-type
  associate_public_ip_address = true
  subnet_id = aws_subnet.myvpc_subnet[0].id
  vpc_security_group_ids = [aws_security_group.public-SG.id]
  # count = length(var.ec2-name)
  user_data = <<EOF
    #!/bin/bash
    # Use this for your user data (script from top to bottom)
    # install httpd (Linux 2 version)
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Hello World from ec2 terraform $(hostname -f)</h1>" > /var/www/html/index.html
    EOF

 tags = {
    Name = var.ec2-name[0]
  }
}


resource "aws_instance" "ec2-priv" {
  ami           = var.image-type
  instance_type = var.ec2-type
  #associate_public_ip_address = true
  subnet_id = aws_subnet.myvpc_subnet[1].id
  vpc_security_group_ids =[ aws_security_group.private-SG.id]
  # count = length(var.ec2-name)
  user_data = <<EOF
    #!/bin/bash
    # Use this for your user data (script from top to bottom)
    # install httpd (Linux 2 version)
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Hello World from ec2 terraform $(hostname -f)</h1>" > /var/www/html/index.html
    EOF

 tags = {
    Name = var.ec2-name[1]
  }
}