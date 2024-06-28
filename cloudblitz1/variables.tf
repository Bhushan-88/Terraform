variable "project" {
    default = "cloudblitz"  
}

variable "vpc_cidr" {
    default = "10.10.0.0/16"
}

variable "private_cidr" {
    default = "10.10.0.0/20"
}

variable "public_cidr" {
    default = "10.10.16.0/20"
}

variable "environment" {
    default = "dev"
}

variable "count" {
    default = 2
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
variable "region" {
    default = "us-east-1"
}