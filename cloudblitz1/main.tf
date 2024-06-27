terraform {
backend "s3" {
    bucket = "buc-virginia"
    region = "us-east-1"
    key = "terraform.tfstate"
    }
}

provider "aws" {
    region = var.region 
}

module "my_vpc_module" {
    source = "./modules/vpc"
    project = var.project
    vpc_cidr = var.vpc_cidr
    env = var.environment
    pri_subnet_cidr = var.private_cidr
    pub_subnet_cidr = var.public_cidr
  
}

module "my_instance" {
    source = "/modules/instance"
    count = var.count
    image_id = var.image_id
    instance_type = var.instance_type
    key_pair = var.key_pair
    project = var.project
    env = var.environment
    subnet_id = module.my_vpc_module.pub_subnet_id
  
}
