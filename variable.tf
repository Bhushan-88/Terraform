provider "aws" {
    region = var.region
    }

resource "aws_instance" "terraform" {
    ami = "ami-0f9fe1d9214628296"
    instance_type = "t2.micro"
    key_name = "tokyo"
    tags = {
        env = "dev"
        name = "instance-1"
    }
vpc_security_group_ids = ["sg-0048d0b71a853da0b"]

}
variable "region" {
    type = ""
    description = "please enter a aws region"
}
