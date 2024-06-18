variable "region" {
    default = "us-east-1"
}

variable "az1" {
    default = "us-east-1"
}
variable "az2" {
    default = "us-east-1"
}

variable "terraform-backend" {
  default = "buc-ohio"
}

variable "vpc_name" {
  default = "cbz-vpc"
}
variable "vpc_cidr" {
    default = "10.10.0.0/16"
  
}
variable "env" {
    default = "dev"
}
variable "pri_sub_cidr" {
    default = "10.10.0.0/20"
}
variable "project" {
    default = "cbz"
}
