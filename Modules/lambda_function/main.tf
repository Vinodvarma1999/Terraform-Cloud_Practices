resource "aws_iam_role" "example" {
  name               = var.role_name
  assume_role_policy = jsonencode({
    Version          = "2012-10-17"
    Statement   = [{
      Action    = "sts:AssumeRole"
      Effect    = "Allow"
      Principal = {
        Service = var.principal_service
      }
    }]
  })
  tags = var.iam_role_tags
}

resource "aws_iam_policy" "example" {
  name   = var.policy_name
  policy = jsonencode({
    Version    = "2012-10-17"
    Statement  = [{
      Effect   = "Allow"
      Action   = var.iam_policy_actions
      Resource = var.iam_policy_resource
    }]
  })
}

resource "aws_iam_role_policy_attachment" "example" {
  policy_arn = aws_iam_policy.example.arn
  role       = aws_iam_role.example.name
}

resource "aws_lambda_function" "example" {
  function_name    = var.function_name
  s3_bucket        = var.s3_bucket
  s3_key           = var.s3_key
  role             = aws_iam_role.example.arn
  runtime          = var.runtime
  handler          = var.handler
  vpc_config {
    subnet_ids         = var.list_of_subnets
    security_group_ids = var.list_of_security_groups
  }
  tags  = var.lambda_function_tags
}
