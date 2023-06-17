variable "sg_name" {
  description = "The name of the AWS security group."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created."
  type        = string
}

variable "sg_tags" {
  description = "Tags to associate with the security group."
  type        = map(string)
}

variable "aws_secret_key" {
  description = "The AWS secret access key for authentication."
  type        = string
}

variable "aws_access_key" {
  description = "The AWS access key for authentication."
  type        = string
}

variable "security_group_egress_rules" {
  description = "A map of egress rules for the security group."
  type        = map(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
    ipv6_cidr_blocks = list(string)
    security_groups  = list(string)
    self             = bool
  }))
}

variable "security_group_rules" {
  description = "A map of ingress rules for the security group."
  type        = map(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
    ipv6_cidr_blocks = list(string)
    security_groups  = list(string)
    self             = bool
  }))
}
