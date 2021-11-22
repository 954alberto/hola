resource "aws_iam_user" "user" {
  name = var.user_name
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_user_group_membership" "membership" {
  user = aws_iam_user.user.name

  groups = [
    aws_iam_group.group.name,
  ]
}