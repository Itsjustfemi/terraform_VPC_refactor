# create vpc resource
resource "aws_vpc" "isaiah_vpc" {
  cidr_block                     = var.vpc_cidr
  instance_tenancy               = "default"
  enable_dns_support             = true
  enable_dns_hostnames           = true
  enable_classiclink             = false
  enable_classiclink_dns_support = false

  tags = {
    Name = "isaiah_vpc"
  }
}