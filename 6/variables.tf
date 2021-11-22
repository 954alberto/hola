variable "environment" {
  description = "The environment in relation to DTAP, values can be tst, dev, acc or prd"
  default     = "dev"
}
variable "group_name" {
  description = "The name of the IAM group"
  default     = "ci"
}

variable "role_name" {
  description = "The name of the IAM role"
  default     = "ci"
}

variable "user_name" {
  description = "The name of the IAM user"
  default     = "ci"
}

variable "policy_name" {
  description = "The name of the IAM policy"
  default     = "ci"
}
