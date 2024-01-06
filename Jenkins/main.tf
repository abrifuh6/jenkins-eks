# Using existing modules from terraform registry

# VPC

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "jenkins-vpc"
  cidr = var.vpc_cidr

  azs             = data.aws_availability_zone.azs.names
  public_subnets  = var.public_subnets

  enable_dns_hostnames = true

  tags = {
    Name = "jenkins-vpc"
    Terraform = "true"
    Environment = "dev"
  }
}

# Security Groups

# EC2 instance on AWS