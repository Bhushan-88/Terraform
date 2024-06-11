provider "aws" {
    region = "ap-northeast-1"
    }

resource "aws_iam_user" "demo" {
    name = "user1"
}
