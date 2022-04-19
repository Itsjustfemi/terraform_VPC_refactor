variable "pub_subnet_cidr" {
   type    = list(string)
  #  default = ["10.0.1.0/24", "10.0.2.0/24"]

 }

  variable "priv_subnet_cidr" {
  type    = list(string)
  # default = ["10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  }

  data "aws_availability_zones" "available" {
  state = "available"
 }
 variable "vpc_id" {
   type = string
   
 }