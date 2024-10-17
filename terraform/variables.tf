variable "region" {
    default = "us-east-1"
  
}
variable "role" {
    type = string
    sensitive = true
}
variable "key" {
    type = string
    default = "testKeyPair"
}
variable "ami" {
    type = string
    default = "ami-06b21ccaeff8cd686"
}
variable "type" {
    type = string
    default = "t2.medium"
}