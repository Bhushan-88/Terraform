provider "aws" {
    region = var.region
  
}
resource "aws_instance" "instance-1" {
    instance_type = "t2.micro"
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