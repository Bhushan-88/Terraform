provider "aws" {
    region = var.aws_region
  
}

resource "aws_instance" "terraform" {
    ami = "ami-067deadd431782242"
    instance_type = "t2.micre"
    key_name = "tokyo"
    tags = {
        env = "dev"
    }
  vpc_security_group_ids = "sg-0c8782daf72c3f29d"
}
variable "plz enter region" {

  
}