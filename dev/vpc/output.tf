output "vpcid" {
  value = module.appvpc.vpc_id
}

output "pvtsubnets" {
  value = module.appvpc.private_subnets
}

output "pubsubnets" {
  value = module.appvpc.public_subnets
}