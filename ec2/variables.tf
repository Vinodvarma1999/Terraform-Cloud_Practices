  ec2 = {
    instance_type       = string
    aws_ami             = string
    instance_count      = number
    aws_region          = string
    aws_access_key      = string
    aws_secret_key      = string
    aws_security_group  = list(string)
    aws_subnet_id       = string
  }
