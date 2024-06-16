provider "aws"{
    region = var.region
}

resource "aws_instance" "instance-1" {
  ami = "ami-033fabdd332044f06"
  instance_type = "t2.micro"
  key_name = "ohio"
  
  tags = {
    dev = "dev"
    name ="my-ins"
  }
}

variable "region" {
  description = "please enter a region"
}
