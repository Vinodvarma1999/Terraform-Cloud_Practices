variable "aws_region" {
  type        = string
  description = "The AWS region to use for resources"
}

variable "instance_type" {
  type        = string
  description = "The instance type for the EC2 instance"
}

variable "ami_id" {
  type        = string
  description = "The ID of the AMI to use for the EC2 instance"
}

variable "aws_access_key" {
  type        = string
  description = "Using a access key to deploy aws resources"
}

variable "aws_secret_key" {
  type        = string
  description = "Using a secret key to deploy aws resources"
}

variable "db_username" {
  description = "The username for the database"
  type        = string
  #default     = "admin"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
#   default     = "admin9988"
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
#   default     = "db.t2.micro"
}

variable "db_engine" {
  description = "The database engine for the RDS instance"
  type        = string
#   default     = "mysql"
}

variable "db_engine_version" {
  description = "The version of the database engine for the RDS instance"
  type        = string
#   default     = "5.7"
}

variable "db_storage_size" {
  description = "The storage size for the RDS instance"
  type        = number
#   default     = 20
}
