variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "aws_access_key" {
  description = "The AWS access key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "The AWS secret key"
  type        = string
  sensitive   = true
}

variable "number_of_sgs" {
  description = "Number of security groups to create."
  type        = number
}

variable "sg_base_name" {
  description = "Base name for security groups."
  type        = string
}

variable "sg_configs" {
  description = "Map of security group configurations."
  type = map(object({
    name = string
    port = number
  }))
}

variable "create_sg" {

  default = true

}

