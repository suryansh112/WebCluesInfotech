module "ec2"{
    source = "./ec2"
    role = var.role
    region = var.region
    key = var.key
    ami = var.ami
    type = var.type
    ec2_security_group = module.sg_group.name
}
module "ansible"{
    source = "./ansible"
    role = var.role
    region = var.region
    key = var.key
    ami = var.ami
    type = var.type
    ec2_security_group = module.sg_group.name
}
module "sg_group"{
    source = "./sg"
    name = "web-instance-security-group"
}