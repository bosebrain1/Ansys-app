region   = "us-east-1"
vpc_cidr = "10.0.0.0/16"
public_subnet_a_cidr = "10.10.1.0/24"
public_subnet_b_cidr = "10.10.2.0/24"
public_subnet_c_cidr = "10.10.3.0/24"

private_subnet_a_cidr = "10.0.11.0/24"
private_subnet_b_cidr = "10.0.12.0/24"
private_subnet_c_cidr = "10.0.13.0/24"

az_a = "us-east-1a"
az_b = "us-east-1b"
az_c = "us-east-1c"
ami_id        = "ami-00ca32bbc84273381" # Amazon Linux 2
instance_type = "t3.micro"
