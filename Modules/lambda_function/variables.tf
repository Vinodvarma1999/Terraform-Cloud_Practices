variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "principal_service" {
  description = "Principal service for IAM role"
  type        = string
  default     = "lambda.amazonaws.com"
}

variable "iam_policy_actions" {
  description = "List of actions for IAM policy"
  type        = list(string)
}

variable "iam_policy_resource" {
  description = "ARN of the resource"
  type        = list(string)
}

variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

# variable "filename" {
#   description = "Path to the Lambda function deployment package"
#   type        = string
# }

# variable "handler" {
#   description = "Handler of the Lambda function"
#   type        = string
# }

variable "runtime" {
  description = "Runtime for the Lambda function"
  type        = string
}

variable "list_of_subnets" {
  description = "List of subnet IDs for the Lambda function's VPC configuration"
  type        = list(string)
}

variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "list_of_security_groups" {
  description = "List of security group IDs for the Lambda function's VPC configuration"
  type        = list(string)
}
