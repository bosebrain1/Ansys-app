provider "aws" {
  region = var.region
}

module "network" {
  source = "./modules/network"
  region               = var.region
  vpc_cidr             = var.vpc_cidr
  public_subnet_a_cidr = var.public_subnet_a_cidr
  public_subnet_b_cidr = var.public_subnet_b_cidr
  public_subnet_c_cidr = var.public_subnet_c_cidr
  private_subnet_a_cidr = var.private_subnet_a_cidr
  private_subnet_b_cidr = var.private_subnet_b_cidr
  private_subnet_c_cidr = var.private_subnet_c_cidr
  az_a                = var.az_a
  az_b                = var.az_b
  az_c                = var.az_c
}

module "ec2-instance" {
  source = "./modules/ec2-instance"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
}



