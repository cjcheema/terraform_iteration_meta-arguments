variable "number_of_sgs" {
  description = "Number of security groups to create."
  type        = number
}

variable "sg_base_name" {
  description = "Base name for security groups."
  type        = string
}