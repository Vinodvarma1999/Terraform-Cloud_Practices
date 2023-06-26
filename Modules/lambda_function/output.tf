output "lambda_function_name" {
  description = "Name of the created Lambda function"
  value       = aws_lambda_function.example.function_name
}

output "lambda_function_arn" {
  description = "ARN of the created Lambda function"
  value       = aws_lambda_function.example.arn
}

output "lambda_function_role_arn" {
  description = "ARN of the IAM role attached to the Lambda function"
  value       = aws_iam_role.example.arn
}
