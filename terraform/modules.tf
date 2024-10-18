module "ec2"{
    source = "./ec3"
    role = var.role
    region = var.region
    key = var.key
    ami = var.ami
    type = var.type
}
module "ansible"{
    source = "./ansible"
    role = var.role
    region = var.region
    key = var.key
    ami = var.ami
    type = var.type
}
module "sg"{
    source = "./sg"
}