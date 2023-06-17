resource "aws_security_group" "example" {
  name        = var.sg_name
  description = ""
  vpc_id      = var.vpc_id
  tags        = var.sg_tags

  lifecycle {
    create_before_destroy = true
  }

  timeouts {
    delete = "2m"
  }

  dynamic "ingress" {
    for_each = var.security_group_rules
    content {
      from_port       = ingress.value["from_port"]
      to_port         = ingress.value["to_port"]
      protocol        = ingress.value["protocol"]
      cidr_blocks     = ingress.value["cidr_blocks"]
      ipv6_cidr_blocks= ingress.value["ipv6_cidr_blocks"]
      security_groups = ingress.value["security_groups"]
      self            = ingress.value["self"]
    }
  }

  dynamic "egress" {
    for_each = var.security_group_egress_rules
    content {
      from_port       = egress.value["from_port"]
      to_port         = egress.value["to_port"]
      protocol        = egress.value["protocol"]
      cidr_blocks     = egress.value["cidr_blocks"]
      ipv6_cidr_blocks= egress.value["ipv6_cidr_blocks"]
      security_groups = egress.value["security_groups"]
      self            = egress.value["self"]
    }
  }
}

