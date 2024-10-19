module "ec2"{
    source = "./ec2"
    role = var.role
    region = var.region
    key = var.key
    ami = var.ami
    type = var.type
    ec2_security_group = module.sg_group.sg_name
}
module "sg_group"{
    source = "./sg"
    name = "web-instance-security-group"
}
