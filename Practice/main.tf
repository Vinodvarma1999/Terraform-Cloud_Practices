data "aws_vpc" "example" {
  filter {
    name   = "tag:Name"
    values = ["my-vpc"]
  }
}

data "aws_security_group" "example" {
  name        = "my-SG"
  vpc_id      = data.aws_vpc.example.id
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

data "aws_subnet" "example" {
  for_each = var.subnets
  id       = each.value.id
}

resource "aws_instance" "example" {
  ami = data.aws_ami.example.id
  instance_type = var.instance_type
  subnet_id = data.aws_subnet.example["subnet_3"].id           
  vpc_security_group_ids = [
    data.aws_security_group.example.id
  ]

  tags = {
    Name = "my-EC2"
  }
}

output "private_ip" {
  value = aws_instance.example.private_ip
}
