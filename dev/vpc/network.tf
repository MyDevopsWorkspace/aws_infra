module "appvpc" {
  source = "git@github.com:MyDevopsWorkspace/terramodules.git//network?ref=main"
  region = var.region
  vpc_cidr_range = var.vpc_cidr_range
  private_subnets = var.private_subnets
  public_subnets = var.public_subnets
  tags = var.default_tags
  vpc_name = var.vpc_name
}




