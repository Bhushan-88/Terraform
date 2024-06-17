provider "aws" {
    region = var.region
  
}
resource "aws_instance" "instance" {
    ami = "ami-033fabdd332044f06"
    instance_type = "t2.micro"
    key_name = "ohio"
    vpc_security_group_ids = ["sg-054e743f8fcca7143"]
    tags = {
        env = "dev"
        name = "ins-1"
    }
    variable "region" {
        description = "enter rgion name"
      
    }