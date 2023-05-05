variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The instance type for the EC2 instance"
}

variable "aws_regions" {
  type = map(string)
  description = "The AWS region to use for resources"
  default = {
    region-1      = "us-east-1"
    # region-2      = "us-east-2"
    # region-3      = "us-west-1"
    # region-4      = "us-west-2"
  }
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
    # subnet_3 = {
    #   id                = "subnet-0f16e27f5f62bdb70"
    #   availability_zone = "us-east-1c"
    # },
  }
}

variable "security_groups" {
  type = map(string)
  default = {
    sg_1 = "sg-028dc593103896d09"
    # sg_2 = "sg-0123456789abcdef1"
    # sg_3 = "sg-0123456789abcdef2"
    # sg_4 = "sg-0123456789abcdef3"
    # sg_5 = "sg-0123456789abcdef4"
    # sg_6 = "sg-0123456789abcdef5"
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