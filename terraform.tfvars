# Variables for the count-based module
number_of_sgs = 2
sg_base_name  = "web-sg"

# Variables for the for_each-based module
sg_configs = {
  sg1 = { name = "web-sg-1", port = 80 }
  sg2 = { name = "web-sg-2", port = 443 }
}