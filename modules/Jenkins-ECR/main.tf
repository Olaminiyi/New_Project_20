resource "aws_instance" "Jenkins" {
 ami                         = var.ami-jenkins
 instance_type               = "t2.micro"
 subnet_id                   = var.subnet_id
    
 key_name                    = var.keypair
 iam_instance_profile        = var.iam_instance_profile
 associate_public_ip_address = true
  vpc_security_group_ids   = var.security_group_id

  tags = {
    Name = "tooling-Jenkins"
    
  }
}

resource "aws_ecr_repository" "tooling_ecr" {
  name = "tooling-ecr"
}