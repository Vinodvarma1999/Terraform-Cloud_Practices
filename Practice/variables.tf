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

# variable "my_map_variable" {
#   type = map(string)
#   default = {
#     subnet-1 = ""
#     subnet-2 = "value2"
#     subnet-3 = "value3"
#     subnet-4 = "value4"
#     subnet-5 = "value5"
#     subnet-6 = "value6"
#   }
# }

variable "aws_access_key" {
  type        = string
  description = "Using a access key to deploy aws resources"
}

variable "aws_secret_key" {
  type        = string
  description = "Using a secret key to deploy aws resources"
}
