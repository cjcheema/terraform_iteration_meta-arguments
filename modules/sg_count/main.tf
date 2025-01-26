resource "aws_security_group" "count_sg" {
  count       = var.number_of_sgs
  name        = "${var.sg_base_name}-${count.index + 1}"
  description = "Security Group created using count index ${count.index + 1}"

  ingress {
    from_port   = 80
    to_port     = 80
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