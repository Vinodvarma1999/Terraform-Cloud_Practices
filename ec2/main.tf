module "my-module" {
  source                  = "..//Modules//ec2"
  aws_ami                 = var.aws_ami
  instance_type           = var.instance_type
  aws_subnet_id           = var.aws_subnet_id
  vpc_security_group_ids  = var.aws_security_group
  instance_count          = var.instance_count
}
