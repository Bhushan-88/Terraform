provider "aws" {
    region = "us-east-2"
}
resource "aws_instance" "instance-1" {
  ami = "ami-033fabdd332044f06"
  instance_type = "t2.micro"
  key_name = "ohio"
  tags = {
    env ="dev"
    name = "instance-1"
  }
}
