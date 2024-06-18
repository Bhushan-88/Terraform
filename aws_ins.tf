#to save terraform.tfstate file (note enable bucket versioning)
terraform {
  backend "s3" {
    bucket = "buc-ohio"
    region = "us-east-2"
    key = "terraform.tfstate"
  }
}
#provider block
provider "aws" {
    region = var.region
    }
#Resources name
resource "aws_instance" "my-instance" {
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
    description = "plz enter ins type"
  
}
#output for print only
output "demo" { 
    value = "Hello World"
}
output "public_ip" {
    value = aws_instance.my-instance.public_ip

}
data "aws_security_groups" "my_sg" {
  filter {
    name   = "group-name"
    values = ["default"]
  }

  filter {
    name   = "vpc-id"
    values = ["vpc-02f1f0a3c81dc6f9d"]
  }
}