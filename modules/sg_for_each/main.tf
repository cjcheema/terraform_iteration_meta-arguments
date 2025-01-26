resource "aws_security_group" "for_each_sg" {
  for_each = var.sg_configs

  name        = each.value.name
  description = "Security Group created for ${each.key}"

  ingress {
    from_port   = each.value.port
    to_port     = each.value.port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}