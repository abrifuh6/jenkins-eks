variable "vpc_cidr" {
    description = "VPC CIDR"
    type = string
}

variable "public_subnets" {
    description = "Public Subnet CIDR"
    type = list(string)
  
}