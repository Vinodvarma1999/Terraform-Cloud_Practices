module "my-module" {
  source          = "..//Modules//ec2"
  instance_type   = "t3.micro"
  instance_count  = 2
}
