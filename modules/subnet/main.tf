resource "aws_subnet" "public_subnet" {
  count                   = length(var.pub_subnet_cidr)
  vpc_id                  = var.vpc_id
  cidr_block              = var.pub_subnet_cidr[count.index]
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true


  tags = {
    Name = "${format("isaiah_publicSubnet-%0d", count.index + 1)}"
  }
}

// creating private subnet 
resource "aws_subnet" "private_subnet" {
  count             = length(var.priv_subnet_cidr)
  vpc_id            = var.vpc_id
  cidr_block        = var.priv_subnet_cidr[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
}

  # tags = {
  #   Name = "${format("isaiah_privatesub-%0d", count.index + 1)}"
  # }


# }
