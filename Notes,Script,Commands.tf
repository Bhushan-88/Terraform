# Terraform

Terraform Lyfecycle :
init >> plan >> apply >> destroy

terraform suports Hcl and ajson
                  .tf   and .tf.json

## Installation terraform
sudo yum install -y yum-utils shadow-utils
## Terraform run on HCl language 
providers
official -aws,azure,gcp
partner -alibaba
community -others

## Data types in terraform
1.String = ex-"example","ubuntu","centos"
2.Number = 123456789
3.Bool = True,False 0,1
4.List = [ "red" , "yellow" , "green" , "blak"]
5.map = {city = pune, state = mahrashtra, country = india}

## Installation terraform
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform

or
download binary pkg
https://releases.hashicorp.com/terraform/1.8.5/terraform_1.8.5_linux_amd64.zip

unzip pkg
move file on exicutable location
mv terraform /bin/tf
terraform --version (to check)

## aws configure
enter access key and secret key
region -
format-json 

## create script file.tf

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
    profile = "devops.tf"
}

resource "aws_iam_user" "demo2" {
    name = "user2"
}

1) Run command - terrafrom init
2) terraform plan
2) terraform apply
enetr value -yes

5) tf apply -auto-approve (after script skip all commands we can also use)

