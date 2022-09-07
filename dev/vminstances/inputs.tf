variable "region" {
  description = "specify the region"
  default        = "eu-west-2"
}


variable "default_tags" {
  default     = {
 
     Environment = "dev"
     Owner       = "App"
 
}
  description = "Default Tags for Auto Scaling Group"
  type        = map(string)
}

variable "configuration" {
  description = "The total configuration, List of Objects/Dictionary"
  default = [{}]
}


