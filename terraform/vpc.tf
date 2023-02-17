################################################################################
# VPC Module
################################################################################

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "sacode"
  cidr = "10.1.0.0/16"

  azs                 = ["${var.region}a", "${var.region}b", "${var.region}c"]
  private_subnets     = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
  public_subnets      = ["10.1.11.0/24", "10.1.12.0/24", "10.1.13.0/24"]
  
  single_nat_gateway = true
  enable_nat_gateway = true
  one_nat_gateway_per_az = false
  enable_dns_hostnames = true
    
  vpc_tags = {
    Name = "vpc-sacode"
  }
}
