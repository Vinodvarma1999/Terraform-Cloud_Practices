data "aws_vpc" "example" {
  filter {
    name   = "tag:Name"
    values = ["my-vpc"]
  }
}

data "aws_subnet" "example" {
  filter {
    name   = "tag:Name"
    values = ["my-subnet-1"]
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

data "aws_key_pair" "example" {
  key_name = "Practice"
}


resource "aws_instance" "example" {
  ami = data.aws_ami.example.id
  instance_type = var.instance_type
  key_name = data.aws_key_pair.example.key_name
  subnet_id = data.aws_subnet.example.id
  associate_public_ip_address = true   # add this line to associate a public IP
  
  vpc_security_group_ids = [
    data.aws_security_group.example.id
  ]

  tags = {
    Name = "my-EC2"
  }
}

output "public_ip" {
  value = aws_instance.example.public_ip
}
