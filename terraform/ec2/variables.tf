variable "region" {
    sensitive = false
  
}
variable "role" {
    type = string
    sensitive = true
}
variable "key" {
    type = string
}
variable "ami" {
    type = string
}
variable "type" {
    type = string
}
variable "ec2_security_group"{
    type =  string
}