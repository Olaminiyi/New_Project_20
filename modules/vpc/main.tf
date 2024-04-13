resource "aws_vpc" "tooling_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "tooling-vpc"
  }
}

resource "aws_subnet" "tooling_subnet" {
  vpc_id     = aws_vpc.tooling_vpc.id
  cidr_block = var.subnet_cidr
  availability_zone      = var.zone
  map_public_ip_on_launch = true  

  tags = {
    Name = "tooling-subnet"
  }
}

resource "aws_route_table" "tooling_route_table" {
  vpc_id = aws_vpc.tooling_vpc.id


  tags = {
    Name = "tooling route-table"
  }
}

resource "aws_route" "tooling_route" {
  route_table_id            = aws_route_table.tooling_route_table.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.tooling_internet_gtw.id
}

resource "aws_route_table_association" "tooling_route_association" {
  subnet_id      = aws_subnet.tooling_subnet.id
  route_table_id = aws_route_table.tooling_route_table.id
}