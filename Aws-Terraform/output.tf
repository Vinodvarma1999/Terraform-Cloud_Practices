output "private_ips" {
  value = aws_instance.my-project[*].private_ip
}
