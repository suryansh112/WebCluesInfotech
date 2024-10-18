resource "aws_instance" "ec2" {
  ami                  = var.ami
  instance_type        = var.type
  key_name             = var.key
  security_groups      = [aws_security_group.ec2.name]
  user_data            = <<-EOF
#!/bin/bash 
sudo su
yum update -y
yum install nginx -y
systemctl start nginx
systemctl enable nginx      
EOF 
  tags = {
    Name = "web_instance"
  }
  depends_on = [ aws_security_group.ec2 ]

}
