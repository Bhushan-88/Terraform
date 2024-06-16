provider "aws" {
    region = "us-east-2"
}
resource "aws_instance" "instance-1" {
  ami = "ami-033fabdd332044f06"
  instance_type = "t2.micro"
  key_name = "ohio"
  security_groups = ["sg-08b442c8b6b7db597", "sg-054e743f8fcca7143"]
  
  tags = {
    dev = "dev"
    name ="my-ins"
  }
}

variable "region" {
}
