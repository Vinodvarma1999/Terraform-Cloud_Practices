# Creating a VPC
resource "aws_vpc" "my-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my-vpc"
  }
}

# Creating a Security Group 
resource "aws_security_group" "my-sg" {
  name = "my-sg"
  vpc_id = aws_vpc.my-vpc.id
  
  ingress  {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my-sg"
  }
}

# Creating a Subnet
resource "aws_subnet" "my-subnet" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "mysubnet"
  }  
}

locals {
  last_used_number = try(file("${path.module}/last_used_number.txt"), "0")
  formatted_number = format("%02d", local.last_used_number)
}

# Write the last used number to a local file
resource "local_file" "last_used_number_file" {
  content  = local.last_used_number + var.instance_count
  filename = "${path.module}/last_used_number.txt"
}

# Creating EC2 Instance
resource "aws_instance" "my-project" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t3.micro"
  count         = var.instance_count
  subnet_id = aws_subnet.my-subnet.id

  vpc_security_group_ids = [
    aws_security_group.my-sg.id
  ]

  tags = {
    Name = "${var.location}${var.app_name}${var.env}${var.service_name}${local.last_used_number + count.index}"

  }
}

