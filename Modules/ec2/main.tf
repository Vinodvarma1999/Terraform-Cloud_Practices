# Creating EC2 Instance
resource "aws_instance" "my-project" {
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  count                  = var.instance_count
  subnet_id              = var.aws_subnet_id
  vpc_security_group_ids = var.aws_security_group
  availability_zone      = var.availability_zone

  tags = {
    Name = "${var.location}${var.app_name}${var.env}${var.service_name}${format("%03d", count.index + 1)}"
  }
} 
























