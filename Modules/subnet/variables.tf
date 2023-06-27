variable "vpc_id" {
  type = string
  description = "The VPC ID"
}

variable "cidr_block" {
  type = string
  description = "The IPv4 CIDR block for the subnet."
}

variable "map_public_ip_on_launch" {
  type = bool
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
}

variable "tags" {
  type = map(string)
  description = "A map of tags to assign to the resource"
}

variable "enable_routing" {
  description = "Flag to enable/disable route table association"
  default     = false
}

variable "route_table_id" {
  description = "The ID of the route table"
}

variable "enable_network_acl" {
  description = "Flag to enable/disable network ACL association"
  default     = false
}

variable "network_acl_id" {
  description = "The ID of the network ACL"
}


variable "aws_access_key" {}
variable "aws_secret_key" {}
