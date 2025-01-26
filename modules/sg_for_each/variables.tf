variable "sg_configs" {
  description = "Map of security group configurations."
  type        = map(object({
    name = string
    port = number
  }))
}