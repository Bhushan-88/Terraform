# main.tf

provider "aws" {
  region = "us-west-2"  # Change this to your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-033fabdd332044f06"  # Change this to the desired AMI ID
  instance_type = "t2.micro"  # Change this to your desired instance type

  key_name = "ohio"  # Change this to your key pair name

  security_groups = ["sg-054e743f8fcca7143"]  # Change this to your security group

  tags = {
    Name = "MyInstance1"  # Change this to your desired instance name
  }
}

# Create a security group
resource "aws_security_group" "my-security-group" {
  name        = "sg-054e743f8fcca7143"
  description = "sg-054e743f8fcca7143"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
