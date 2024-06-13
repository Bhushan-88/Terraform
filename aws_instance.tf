provider "aws" {
    region = "ap-northeast-1"
    }

resource "aws_instance" "terraform" {
    ami = "ami-067deadd431782242"
    instance_type = "t2.micro"
    key_name = "tokyo"
    tags = {
        env = "dev"
        name = "instance-1"
    }
vpc_security_group_id = ["sg-0c8782daf72c3f29d"]
}

variable "region" {

  
}