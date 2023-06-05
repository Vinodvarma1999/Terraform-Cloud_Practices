variable "instance_type" {
  type        = string
  description = "The instance type for the EC2 instance"
}

variable "aws_ami" {
  type = string
}

variable "aws_subnet_id" {
  type = string
}  

variable "aws_security_group" {
  type = list(string)
}  

variable "availability_zone" {
  type = string
}
  
variable "instance_count" {
  type = number
}  

variable "aws_region" {
  type        = string
  description = "The AWS region to use for resources"
}

variable "aws_access_key" {
  type        = string
  description = "Using a access key to deploy aws resources"
}

variable "aws_secret_key" {
  type        = string
  description = "Using a secret key to deploy aws resources"
}

