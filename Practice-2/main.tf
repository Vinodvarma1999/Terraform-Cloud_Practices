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
resource "aws_subnet" "my-subnet-1" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "subnet-1"
  }  
}

# Creating a new Key-Pair 
resource "aws_key_pair" "my-keypair" {
  key_name   = "my-keypair"
  public_key = file("~/.ssh/my-keypair.pub") # Replace with your public key file path
}

# Creating EC2 Instance
resource "aws_instance" "my-project" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = aws_key_pair.my-keypair.key_name
  subnet_id = aws_subnet.my-subnet.id
  
  vpc_security_group_ids = [
    aws_security_group.my-sg.id
  ]

  tags = {
    Name = "my-ec2"
  }
}

