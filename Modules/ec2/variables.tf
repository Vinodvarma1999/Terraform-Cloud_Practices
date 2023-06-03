variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The instance type for the EC2 instance"
}

variable "instance_count" {
  type = number
  default = 12
}  

variable "aws_region" {
  type        = string
  default     = "us-east-1"
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

variable "subnets" {
  type = map(object({
    id                = string
    availability_zone = string
  }))
  default = {
    subnet_1 = {
      id                = "subnet-0cdf91acd355832da"
      availability_zone = "us-east-1a"
    },
    # subnet_2 = {
    #   id                = "subnet-00c55c0db4e18f334"
    #   availability_zone = "us-east-1b"
    # },
  }
}

variable "security_groups" {
  type = map(string)
  default = {
    sg_1 = "sg-028dc593103896d09"
    # sg_2 = "sg-0123456789abcdef1"
  }
}

variable "location" {
  default = "IBCI"
}

variable "app_name" {
  default = "XPC"
}

variable "env" {
  default = 3
}

variable "service_name" {
  type = string
  default = "VM"
} 
