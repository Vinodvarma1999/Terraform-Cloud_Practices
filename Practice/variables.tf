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
    subnet_2 = {
      id                = "subnet-00c55c0db4e18f334"
      availability_zone = "us-east-1b"
    },
    subnet_3 = {
      id                = "subnet-0f16e27f5f62bdb70"
      availability_zone = "us-east-1c"
    },
  }
}

variable "aws_access_key" {
  type        = string
  description = "Using a access key to deploy aws resources"
}

variable "aws_secret_key" {
  type        = string
  description = "Using a secret key to deploy aws resources"
}
