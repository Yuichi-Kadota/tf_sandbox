################################
# public subnet
################################

resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id
  tags = {
    Name = "${var.name}_${var.env}_igw"
  }
}

resource "aws_route_table" "pub_rtbl" {
  vpc_id = var.vpc_id
  tags = {
    Name = "${var.name}_${var.env}_pub_rt"
  }
}

resource "aws_route" "pub_route" {
  route_table_id         = aws_route_table.pub_rtbl.id
  gateway_id             = aws_internet_gateway.igw.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_subnet" "pub_sub_a" {
  vpc_id                  = var.vpc_id
  cidr_block              = cidrsubnet(aws_vpc.vpc.cidr_block, 8, 1)
  map_public_ip_on_launch = true
  availability_zone       = "ap-northeast-1a"
  tags = {
    Name = "${var.name}_${var.env}_pub_sub_a"
  }
}

resource "aws_subnet" "pub_sub_c" {
  vpc_id                  = var.vpc_id
  cidr_block              = cidrsubnet(aws_vpc.vpc.cidr_block, 8, 2)
  map_public_ip_on_launch = true
  availability_zone       = "ap-northeast-1c"
  tags = {
    Name = "${var.name}_${var.env}_pub_sub_c"
  }
}

resource "aws_route_table_association" "pub_sub_a_route" {
  subnet_id      = aws_subnet.pub_sub_a.id
  route_table_id = aws_route_table.pub_rtbl.id

}

resource "aws_route_table_association" "pub_sub_c_route" {
  subnet_id      = aws_subnet.pub_sub_c.id
  route_table_id = aws_route_table.pub_rtbl.id
}


################################
# private subnet
################################

resource "aws_route_table" "pri_rtbl" {
  vpc_id = var.vpc_id
  tags = {
    Name = "${var.name}_${var.env}_pri_rt"
  }
}

resource "aws_subnet" "pri_sub_a" {
  vpc_id                  = var.vpc_id
  cidr_block              = cidrsubnet(aws_vpc.vpc.cidr_block, 8, 10)
  map_public_ip_on_launch = true
  availability_zone       = "ap-northeast-1a"
  tags = {
    Name = "${var.name}_${var.env}_pri_sub_a"
  }
}

resource "aws_subnet" "pri_sub_c" {
  vpc_id                  = var.vpc_id
  cidr_block              = cidrsubnet(aws_vpc.vpc.cidr_block, 8, 11)
  map_public_ip_on_launch = true
  availability_zone       = "ap-northeast-1c"
  tags = {
    Name = "${var.name}_${var.env}_pri_sub_c"
  }
}

resource "aws_route_table_association" "pri_sub_a_route" {
  subnet_id      = aws_subnet.pri_sub_a.id
  route_table_id = aws_route_table.pri_rtbl.id

}

resource "aws_route_table_association" "pri_sub_c_route" {
  subnet_id      = aws_subnet.pri_sub_c.id
  route_table_id = aws_route_table.pri_rtbl.id
}
