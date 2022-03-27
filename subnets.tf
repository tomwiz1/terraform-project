
resource "aws_subnet" "app_subnet_1" {
  vpc_id     = aws_vpc.app_vpc.id
  cidr_block = var.app_subnet_1_cidr_block
  availability_zone = var.availability_zone_subnet_1

  tags = {
    Name = "app-subnet-1"
  }
}

resource "aws_subnet" "app_subnet_2" {
  vpc_id     = aws_vpc.app_vpc.id
  cidr_block = var.app_subnet_2_cidr_block
  availability_zone = var.availability_zone_subnet_2

  tags = {
    Name = "app-subnet-2"
  }
}
