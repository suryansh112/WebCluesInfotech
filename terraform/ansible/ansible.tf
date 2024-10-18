resource "aws_instance" "ansible" {
  ami                  = var.ami
  instance_type        = var.type
  key_name             = var.key
  security_groups      = [var.ec2_security_group]
  user_data            = <<-EOF
#!/bin/bash 
sudo su
yum update -y
yum install ansible -y
systemctl start ansible
systemctl enable ansible      
EOF 
  tags = {
    Name = "ansible_instance"
  }
  depends_on = [ var.ec2_security_group ]

}