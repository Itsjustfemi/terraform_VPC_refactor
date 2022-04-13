provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 1.1.7"
  backend "s3" {
    bucket = "isaiah-bucket"
    key    = "isaiah-bucket/isaiah_folder_bucket/"
    region = "us-east-1"
  }
}



resource "aws_vpc" "isaiah_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "isaiah_vpc"
  }
}
resource "aws_subnet" "public_subnet" {
  count             = length(var.subnet_cidr)
  vpc_id            = aws_vpc.isaiah_vpc.id
  cidr_block        = var.subnet_cidr[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]


  tags = {
    Name = "${format("femi_publicSubnet-%02d", count.index + 1)}"
  }
}

