# Invoke security group count module
/*module "sg_count" {
  source        = "./modules/sg_count"
  number_of_sgs = var.number_of_sgs
  sg_base_name  = var.sg_base_name
}*/

# Invoke security group for_each module
/*module "security_groups_for_each" {
  source     = "./modules/sg_for_each"
  sg_configs = var.sg_configs
}*/

module "sg_count_condition" {
  source        = "./modules/sg_count_condition"
  sg_base_name  = var.sg_base_name
}