resource "aws_vpc" "main_vpc" {
  cidr_block = "192.168.0.0/16"
  tags = { Name = "MainVPC" }
}

resource "aws_internet_gateway" "main_gw" {
  vpc_id = aws_vpc.main_vpc.id
  tags = { Name = "MainInternetGateway" }
}

resource "aws_subnet" "main_subnet" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "192.168.8.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-3a"
  tags = { Name = "MainSubnet" }
}

resource "aws_route_table" "main_rt" {
  vpc_id = aws_vpc.main_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_gw.id
  }
  tags = { Name = "MainRouteTable" }
}

resource "aws_route_table_association" "main_rta" {
  subnet_id      = aws_subnet.main_subnet.id
  route_table_id = aws_route_table.main_rt.id
}