resource "aws_instance" "ec2" {
  ami                  = var.ami
  instance_type        = var.type
  key_name             = var.key
  security_groups      = [var.ec2_security_group]
  user_data            = <<-EOF
#!/bin/bash 
sudo su
yum update -y
yum install docker -y
systemctl start docker
systemctl enable docker      
EOF 
  tags = {
    Name = "web_instance"
  }
  depends_on = [ var.ec2_security_group ]

}
