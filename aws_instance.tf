provider "aws" {
    region = "us-east-2"
}
resource "aws_instance" "instance-1" {
  ami = "ami-033fabdd332044f06"
  instance_type = "t2.micro"
  key_name = "ohio"
  vpc_security_group_ids = "vpc-00a98d3275ef28193 "
  tags = {
    dev = "dev"
    name ="my-ins"
  }
}