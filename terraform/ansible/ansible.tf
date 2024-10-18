resource "aws_instance" "ansible" {
  ami                  = var.ami
  instance_type        = var.type
  key_name             = var.key
  security_groups      = [aws_security_group.ec2.name]
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
  depends_on = [ aws_security_group.ec2 ]

}