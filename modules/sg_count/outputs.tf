output "sgs" {
  value = aws_security_group.count_sg[*].id
}