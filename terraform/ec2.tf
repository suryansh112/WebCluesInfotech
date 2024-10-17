resource "aws_instance" "ec2" {
  ami                  = var.ami
  instance_type        = var.type
  key_name             = var.key
  security_groups      = [aws_security_group.ec2.name]
  user_data            = <<-EOF
#!/bin/bash 
sudo su
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd      
EOF 
  tags = {
    Name = "web_instance"
  }
  depends_on = [ aws_security_group.ec2 ]

}

resource "aws_security_group" "ec2" {
  name        = "web-instance-security-group"
  vpc_id      = aws_vpc.main.id

  ingress {
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    protocol    = "tcp"
    from_port   = 6000
    to_port     = 6000
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
