# Security Group Name
sg_name = "my-security-group"

# VPC ID
vpc_id = "vpc-0f8b9a6308864bd6d"

# Security Group Tags
sg_tags = {
  Name        = "My Security Group"
  Environment = "Production"
}

# Ingress Rules
security_group_rules = {
  rule1 = {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    security_groups  = []
    self             = false
  }

  rule2 = {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    security_groups  = []
    self             = false
  }
}

# Egress Rules
security_group_egress_rules = {
  egress_rule1 = {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    security_groups  = []
    self             = false
  }
}
