module "my-module" {
  source          = "..//Modules//ec2"
  instance_type   = "t3.micro"
  instance_count  = 2
  aws_region      = "us-east-1" 
  access_key      = var.aws_access_key
  secret_key      = var.aws_secret_key
}
