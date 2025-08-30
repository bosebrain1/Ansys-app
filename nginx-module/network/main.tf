provider "aws" {
  region = var.region
}

resource "aws_vpc" "nginx_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

}

resource "aws_internet_gateway" "nginx_igw" {
  vpc_id = aws_vpc.nginx_vpc.id
}

resource "aws_subnet" "public_subnet_a" {
  vpc_id                  = aws_vpc.nginx_vpc.id
  cidr_block              = var.public_subnet_a_cidr
  availability_zone       = var.az_b
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id                  = aws_vpc.nginx_vpc.id
  cidr_block              = var.public_subnet_b_cidr
  availability_zone       = var.az_b
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_c" {
  vpc_id                  = aws_vpc.nginx_vpc.id
  cidr_block              = var.public_subnet_c_cidr
  availability_zone       = var.az_c
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private_subnet_a" {
  vpc_id            = aws_vpc.nginx_vpc.id
  cidr_block        = var.private_subnet_a_cidr
  availability_zone = var.az_a
  map_public_ip_on_launch = false
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id            = aws_vpc.nginx_vpc.id
  cidr_block        = var.private_subnet_b_cidr
  availability_zone = var.az_b
  map_public_ip_on_launch = false
}

resource "aws_subnet" "private_subnet_c" {
  vpc_id            = aws_vpc.nginx_vpc.id
  cidr_block        = var.private_subnet_c_cidr
  availability_zone = var.az_c
  map_public_ip_on_launch = false
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.nginx_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.nginx_igw.id
  }

}

resource "aws_route_table_association" "public_assoc_a" {
  subnet_id      = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_assoc_b" {
  subnet_id      = aws_subnet.public_subnet_b.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_assoc_c" {
  subnet_id      = aws_subnet.public_subnet_c.id
  route_table_id = aws_route_table.public_route_table.id
}
