
variable "region" {
}

variable "vpc_cidr" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "zone" {
  type = string
}

variable "tooling_vpc"{
type = string
}

variable "from_port1" {
  type = number
}
variable "to_port1" {
  type = number
}

variable "from_port2" {
  type = number
}
variable "to_port2" {
  type = number
}
variable "from_port3" {
  type = number
}
variable "to_port3" {
  type = number
}
variable "from_port4" {
  type = number
}
variable "to_port4" {
  type = number
}

variable "ip_protocol" {
  type = string
}
variable "ip_protocol" {
  type = string
}
variable "cidr_ipv4" {
  type = string
}
variable "ami-jenkins" {
    type = string
}
variable "subnet_id" {
  type = string
}


variable "iam_instance_profile" {
  type = string
  description = "IAM role for ECR access"
}
variable "keypair" {
  type = string
}
variable "security_group_id" {
  type = string
}