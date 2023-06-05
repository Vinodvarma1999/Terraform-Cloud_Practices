module "my-module" {
  source                  = "..//Modules//ec2"
  for_each                = var.ec2_config
  aws_ami                 = each.value.aws_ami
  instance_type           = each.value.instance_type
  aws_subnet_id           = each.value.aws_subnet_id
  vpc_security_group_ids  = each.value.aws_security_group
  instance_count          = each.value.instance_count
}
