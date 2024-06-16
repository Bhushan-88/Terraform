provider "aws" {
  region = "us-west-2" # Change this to your desired AWS region
}

resource "aws_iam_user" "admin_user" {
  name = "admin-user"
  tags = {
    "TagKey1" = "TagValue1"
    "TagKey2" = "TagValue2"
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
