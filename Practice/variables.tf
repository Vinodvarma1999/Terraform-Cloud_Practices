variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "The AWS region to use for resources"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The instance type for the EC2 instance"
}

# variable "ami_id" {
#   type        = string
#   description = "The ID of the AMI to use for the EC2 instance"
# }

variable "aws_access_key" {
  type        = string
  description = "Using a access key to deploy aws resources"
}

variable "aws_secret_key" {
  type        = string
  description = "Using a secret key to deploy aws resources"
}
