# Terraform

## Data types in terraform
1.String ex-"example","ubuntu","centos"
2.Number 123456789
3.Bool True,False 0,1
4List [ "red" , "yellow" , "green" , "]


provider "aws" {
    region = "ap-northeast-1"
    access_key = ""
    secret_key =""
}

resource "aws_iam_user" "demo" {
    name = "user1"
}

# commands to run after script
terraform init
terraform plan (run command)
tf validate (to verify changes is valid)
terraform apply
enter value -yes

# anathor way to configure
aws configure --profile devops.tf
enter access key and secret key
region us-east-1
formate -json

vim terra_script.tf
provider "aws" {
    region = "ap-northeast-1"
    profile = "devops.tf
}

resource "aws_iam_user" "demo2" {
    name = "user2"
}

1) command - terrafrom init
2) terraform plan
2) terraform apply
enetr value -yes

5) tf apply -auto-approve (after script skip all commands we can also use)
