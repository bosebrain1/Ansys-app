variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_a_cidr" {
  description = "CIDR for public subnet A"
  default     = "10.0.1.0/24"
}

variable "public_subnet_b_cidr" {
  description = "CIDR for public subnet B"
  default     = "10.0.2.0/24"
}

variable "public_subnet_c_cidr" {
  description = "CIDR for public subnet C"
  default     = "10.0.3.0/24"
}

variable "private_subnet_a_cidr" {
  description = "CIDR for private subnet A"
  default     = "10.0.11.0/24"
}

variable "private_subnet_b_cidr" {
  description = "CIDR for private subnet B"
  default     = "10.0.12.0/24"
}

variable "private_subnet_c_cidr" {
  description = "CIDR for private subnet C"
  default     = "10.0.13.0/24"
}

variable "az_a" {
  default = "us-east-1a"
}

variable "az_b" {
  default = "us-east-1b"
}

variable "az_c" {
  default = "us-east-1c"
}
