module "appvpc" {
  source = "../../modules/network"
  region = var.region
  vpc_cidr_range = var.vpc_cidr_range
  private_subnets = var.private_subnets
  public_subnets = var.public_subnets
  tags = var.default_tags
  
}




