output "subnet_arn" {
 value = aws_subnet.example.arn
 description = "The ARN (Amazon Resource Name) of the subnet."
}

output "subnet_id" {
 value = aws_subnet.example.id
 description = "The ID of the subnet."
}
