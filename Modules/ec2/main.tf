locals {
  last_used_number = try(tonumber(file("${path.module}/last_used_number.txt")), 1)
}

# Write the last used number to a local file
resource "local_file" "last_used_number_file" {
  content  = tostring(local.last_used_number + var.instance_count)
  filename = "${path.module}/last_used_number.txt"
}

# Creating EC2 Instance
resource "aws_instance" "my-project" {
  ami = var.aws_ami
  instance_type = var.instance_type
  count         = var.instance_count
  subnet_id = var.aws_subnet_id
  vpc_security_group_ids = var.aws_security_group

  tags = {
    Name = "${var.location}${var.app_name}${var.env}${var.service_name}${format("%03d", local.last_used_number + count.index)}"
  }
} 
