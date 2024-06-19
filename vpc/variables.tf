variable "region" {
    default = "us-east-1"
}

variable "az1" {
    default = "us-east-1a"
}
variable "az2" {
    default = "us-east-1b"
}

variable "terraform_backend" {
  default = "buc-virginia"
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
variable "pub_sub_cidr" {
    default = "10.10.32.0/20"
}
variable "project" {
    default = "cbz"
}
variable "image_id" {
    default = "ami-08a0d1e16fc3f61ea"
}
variable "instance_type" {
    default = "t2.micro"
}
variable "key_pair" {
    default = "virginia"
}