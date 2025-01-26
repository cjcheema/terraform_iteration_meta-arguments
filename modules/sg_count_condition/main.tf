resource "aws_security_group" "conditional_sg" {

count = var.create_sg ? 1 : 0

name = web-sg-1
description = "This Web Server conditional Security Group is created only if create_sg is true"


ingress {
 from_port = 80
 to_port = 80
 protocol    = "tcp"
 cidr_blocks = ["0.0.0.0/0"]
}


egress {
 from_port = 0
 to_port     = 0
 protocol = "-1"
 cidr_blocks = ["0.0.0.0/0"]
}

}