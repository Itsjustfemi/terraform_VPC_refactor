variable "subnet_cidr" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]

}

data "aws_availability_zones" "available" {
  state = "available"
}