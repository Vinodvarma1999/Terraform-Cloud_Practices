output "private_ips" {
  value = aws_instance.example[*].private_ip
}
