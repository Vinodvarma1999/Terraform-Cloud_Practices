data "aws_vpc" "example" {
  filter {
    name   = "tag:Name"
    values = ["my-vpc"]
  }
}

data "aws_ami" "example" {
  owners = ["self"]
  most_recent = true

  filter {
    name   = "name"
    values = ["my-AMI"]
  }
  filter {
    name   = "state"
    values = ["available"]
  }
}

resource "aws_instance" "example" {
  ami = data.aws_ami.example.id
  instance_type = var.instance_type
  subnet_id = var.subnets["subnet_1"].id           
  vpc_security_group_ids = [
    var.security_groups["sg_1"], 
  ]
  tags = {
    Name = "my-EC2"
  }
}
