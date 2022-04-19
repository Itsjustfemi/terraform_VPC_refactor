# variable "pub_subnet_cidr" {
#   type    = list(string)
#   default = ["10.0.1.0/24", "10.0.2.0/24"]

#  }

# data "aws_availability_zones" "available" {
#   state = "available"
# }

# variable "priv_subnet_cidr" {
#   type    = list(string)
#   default = ["10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

# }

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  type    = list(string)
   default = ["10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

  variable "public_subnet_cidr" {
   type    = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]
  }
 