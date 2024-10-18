resource "aws_instance" "ec2" {
  ami                  = var.ami
  instance_type        = var.type
  key_name             = var.key
  security_groups      = [var.ec2_security_group]
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
  depends_on = [ var.ec2_security_group ]

}
