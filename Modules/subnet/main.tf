resource "aws_subnet" "example" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags                    = var.tags
  route_table_id          = var.enable_routing ? var.route_table_id : null
  network_acl_id          = var.enable_network_acl ? var.network_acl_id : null
}
