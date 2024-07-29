#variables for ec2

variable "subnet_id" {
  type = string
  description = "jenkins Subnet ID"
  default = "subnet-0ed454c295c7a04fc"
}

#variable for key pair

variable "key_pair" {
  type        = string
  description = "jenkins key pair"
  default = "ec2-key"
}
