data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = "../vpc/terraform.tfstate"
  }
}


locals {
  appconfig = [
    for srv in var.configuration : [
        for j in data.terraform_remote_state.vpc.outputs.pubsubnets : [
          for i in range(1, srv.no_of_instances+1) :{
            instance_name = "${srv.component_name}-${i}${j}"
            instance_type = srv.instance_type
            ami = srv.ami
            subnetid = j
            tags = {Name = "${srv.component_name}-${i}${j}"}
      }
    ]
  ]
  ]
}

locals {
   additional_tags = {
   createdDate = "${timestamp()}"
    }
}


locals {
  instances = flatten(local.appconfig)
}
