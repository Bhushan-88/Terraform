provider "aws" {
    region = var.region
    }
resource "aws_instance" "instance" {
    ami = "ami-08a0d1e16fc3f61ea"
    instance_type = var.instance_type
    key_name = "virginia"
    vpc_security_group_ids = ["sg-0bf319c976511b0e0"]
    tags = {
        env = "dev"
        name = "ins-1"
    }
}
variable "region" {
  description = "please enter a region"
  default = "us-east-1"
}
variable "instance_type" {
    description = "t2.micro"
  
}