
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

variable "tooling_vpc" {
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
variable "from_port5" {
  type = number
}
variable "to_port5" {
  type = number
}
variable "from_port6" {
  type = number
}
variable "to_port6" {
  type = number
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



variable "keypair" {
  type = string
}
