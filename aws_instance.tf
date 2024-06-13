provider "aws" {
    region = var.region
  
}

resource "aws_instance" "terraform" {
    ami = "ami-08a0d1e16fc3f61ea"
    instance_type = "t2.micre"
    key_name = "virginia"
    tags = {
        env = "dev"
    }
  vpc_security_group_ids = "sg-0f15633e954b0ce93"
}
variable "region" {
    

}