module "appvm" {
  source = "../../modules/vm"
  
  for_each = {for server in local.instances: server.instance_name =>  server}
  ami_id          = each.value.ami
  instance_type = each.value.instance_type
  subnetid = each.value.subnetid
  tags = merge(each.value.tags,var.default_tags,local.additional_tags)

  
}

