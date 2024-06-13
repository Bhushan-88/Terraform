provider "aws" {
    region = var.region
  
}

resource "aws_instance" "terraform" {
    ami = "ami-08a0d1e16fc3f61ea"
    instance_type = "t2.micro"
    key_name = "virginia"
    tags = {
        env = "dev"
    }
  vpc_security_group_ids = "vpc-06483d93db18b413d"
}
variable "region" {
    

}