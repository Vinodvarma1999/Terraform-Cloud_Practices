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
#  filename         = var.filename
#  source_code_hash = filebase64sha256(var.filename)
#  handler          = var.handler
  role             = aws_iam_role.example.arn
  runtime          = var.runtime

  vpc_config {
    subnet_ids         = var.list_of_subnets
    security_group_ids = var.list_of_security_groups
  }
}
