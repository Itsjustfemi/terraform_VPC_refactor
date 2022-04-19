// create provider
provider "aws" {
  region = "us-east-1"
}

// create backend and version
terraform {
  required_version = ">= 1.1.7"
  backend "s3" {
    bucket = "isaiah-bucket"
    key    = "isaiah-bucket/isaiah_folder_bucket/"
    region = "us-east-1"
  }
}

module "vpc_module_resource" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr

}

module "public_module_subnets" {
  source = "./modules/subnet"
  pub_subnet_cidr = var.public_subnet_cidr
  priv_subnet_cidr = var.private_subnet_cidr
   vpc_id = module.vpc_module_resource.vpc_id

}