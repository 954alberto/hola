resource "aws_iam_policy" "policy" {
  name        = var.policy_name
  path        = "/"
  description = "My test policy"

  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = ["sts:AssumeRole"]
        Effect   = "Allow"
        Resource = "arn:aws:iam::${var.account_id}:role/${var.role_name}"
      },
    ]
  })
}
