provider "aws" {
    region = var.region
  
}

resource "aws_instance" "instance-01" {
    instance_type = var.instance_type
    key_name = "ohio"
    vpc_security_group_ids = ["sg-054e743f8fcca7143"]
    tags = {
        env = "dev"
        name = "instance-1"
    }
}
variable "region" {
  description = "enter region name"
 
}
variable "instance_type" {
    description = "enter ins type"
    default = "t2.micro"
  
}