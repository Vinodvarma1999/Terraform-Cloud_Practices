variable "aws_region" {
  type        = string
  description = "The AWS region to use for resources"
}

variable "ami_id" {
  type        = string
  description = "The ID of the AMI to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The instance type for the EC2 instance"
}
