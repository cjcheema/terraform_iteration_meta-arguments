variable "create_sg" {
 type =   bool
 default = false
}

variable "cond_sg_name" {
  description = "Name for Conditional security group."
  type        = string
}