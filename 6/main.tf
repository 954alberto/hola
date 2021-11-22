module "special-k" {
  source      = "./module"
  role_name   = "${var.environment}-${var.role_name}"
  group_name  = "${var.environment}-${var.group_name}"
  user_name   = "${var.environment}-${var.user_name}"
  policy_name = "${var.environment}-${var.policy_name}"
  account_id  = data.aws_caller_identity.current.account_id
}