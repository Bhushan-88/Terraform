provider "aws" {
  region = "us-west-2" # Change this to your desired AWS region
}

resource "aws_iam_user" "admin_user" {
  name = "admin-user2"
  tags = {
    "TagKey1" = "TagValue3"
    "TagKey2" = "TagValue4"
  }
}

resource "aws_iam_user_policy_attachment" "attach_admin_policy" {
  user       = aws_iam_user.admin_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

output "user_arn" {
  value = aws_iam_user.admin_user.arn
}

output "user_name" {
  value = aws_iam_user.admin_user.name
}
##
#
