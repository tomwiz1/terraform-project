
resource "aws_route_table" "app_route_table" {
  vpc_id = aws_vpc.app_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_igw.id
  }

  tags = {
    Name = "app-route-table"
  }
}

resource "aws_route_table_association" "app_association_subnet_1" {
  subnet_id      = aws_subnet.app_subnet_1.id
  route_table_id = aws_route_table.app_route_table.id
}


resource "aws_route_table_association" "app_association_subnet_2" {
  subnet_id      = aws_subnet.app_subnet_2.id
  route_table_id = aws_route_table.app_route_table.id
}

resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.app_vpc.id

  tags = {
    Name = "vpc-internet-gateway"
  }
}
