provider "aws" {
    region = "us-east-2"
  
}
resource "aws_instance" "instance-1" {
    ami = "ami-08a0d1e16fc3f61ea"
    instance_type = "t2.micro"
    key_name = "ohio"
  
}