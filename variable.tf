variable "region" {
  description = "The AWS region to create resources in"
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnets"
  default     = "us-west-2a"
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
  default     = {
    "Environment" = "Dev"
    "Terraform"   = "true"
  }
}
