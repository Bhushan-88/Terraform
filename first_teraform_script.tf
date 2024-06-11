provider "aws" {
    region = "ap-northeast-1"
    profile = "devops.tf"
    }

resource "aws_iam_user" "demo" {
    name = "user1"
}
