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
