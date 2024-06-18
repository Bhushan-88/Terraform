# Create Terraform Script
#Create a script.tf file with the following content. 
#>This script will define the necessary variables and AWS provider, 
#>and it will create an EC2 instance:

# script.tf
/*
# Define the provider
provider "aws" {
  region = var.aws_region
}

# Define the input variables
variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI in us-west-2 region
}

variable "key_name" {
  description = "The key pair name to use for the instance"
  type        = string
  default     = "my-key-pair"
}

# Define the EC2 instance resource
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "Terraform-Example"
  }
}
/*