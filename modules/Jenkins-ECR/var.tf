
variable "security_group_id" {
   description = "security group for jenkins"
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

