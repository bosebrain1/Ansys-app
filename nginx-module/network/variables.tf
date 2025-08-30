variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_a_cidr" {
  description = "CIDR for public subnet A"
}

variable "public_subnet_b_cidr" {
  description = "CIDR for public subnet B"
}

variable "public_subnet_c_cidr" {
  description = "CIDR for public subnet C"
}

variable "private_subnet_a_cidr" {
  description = "CIDR for private subnet A"
}

variable "private_subnet_b_cidr" {
  description = "CIDR for private subnet B"
}

variable "private_subnet_c_cidr" {
  description = "CIDR for private subnet C"
}

variable "az_a" {
  description = " variable for az c"
}

variable "az_b" {
  description = " variable for az c"
}

variable "az_c" {
  description = " variable for az c"
}
