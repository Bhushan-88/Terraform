provider "aws" {
    region = var.region
  
}

resource "aws_instance" "terraform" {
    ami = "ami-033fabdd332044f06"
    instance_type = "t2.micro"
    key_name = "ohio"
    tags = {
        env = "dev"
    }
  vpc_security_group_ids = "vpc-00a98d3275ef28193 "
}
variable "region" {
    

}