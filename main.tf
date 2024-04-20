# creating VPC
module "VPC" {
  source      = "./modules/vpc"
  region      = var.region
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  zone        = var.zone
}

module "security_grp" {
  source      = "./modules/security_grp"
  tooling_vpc = module.VPC.vpc_id
  from_port1  = var.from_port1
  to_port1    = var.to_port1
  from_port2  = var.from_port2
  to_port2    = var.to_port2
  from_port3  = var.from_port3
  to_port3    = var.to_port3
  from_port4  = var.to_port4
  to_port4    = var.to_port4
  from_port5 = var.from_port5
  to_port5 = var.to_port5
  from_port6 = var.from_port6
  to_port6 = var.to_port6
  ip_protocol = var.ip_protocol
  cidr_ipv4   = var.cidr_ipv4

}
module "Jenkins-ECR" {
  source               = "./modules/Jenkins-ECR"
  ami-jenkins          = var.ami-jenkins
  subnet_id            = module.VPC.subnet_id
  iam_instance_profile = module.VPC.instance_profile
  keypair              = var.keypair
  security_group_id    = [module.security_grp.security_group_id]
}