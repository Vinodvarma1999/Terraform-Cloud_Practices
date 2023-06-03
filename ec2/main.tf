module "my-module" {
  source          = "..//Modules//ec2"
  ami             = var.aws_ami
  instance_type   = var.instance_type
  subnet_id       = var.aws_subnet_id
  vpc_security_group_ids = var.aws_security_group

}
