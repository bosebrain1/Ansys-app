variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-00ca32bbc84273381" 
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

