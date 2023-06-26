role_name                 = "my-role"
policy_name               = "my-policy"
iam_policy_actions        = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents"]
iam_policy_resource       = ["arn:aws:logs:*:*:*"]
function_name             = "my-func"
s3_bucket                 = "mylambdabucket05102923"
s3_key                    = "index.py"
runtime                   = "python3.8"
list_of_subnets           = ["subnet-086b8c8d8fa3a9b10", "subnet-02e5febf94be7d30d"]
list_of_security_groups   = ["sg-02d517bce8bff0d82"]
