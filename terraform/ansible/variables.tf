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