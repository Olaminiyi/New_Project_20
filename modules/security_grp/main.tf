resource "aws_security_group" "tooling_security_group" {
  name        = "tooling security group"
  description = "Allow some inbound traffic and all outbound traffic"
  vpc_id      = var.tooling_vpc

  tags = {
    Name = "tooling Sec-grp"
  }
}

resource "aws_vpc_security_group_ingress_rule" "inbound-jenkins-http1" {
  security_group_id = aws_security_group.tooling_security_group.id
  cidr_ipv4         = var.cidr_ipv4
  from_port         = var.from_port1
  ip_protocol       = var.ip_protocol
  to_port           = var.to_port1
}

resource "aws_vpc_security_group_ingress_rule" "inbound-jenkins-http2" {
  security_group_id = aws_security_group.tooling_security_group.id
  cidr_ipv4         = var.cidr_ipv4
  from_port         = var.from_port2
  ip_protocol       = var.ip_protocol
  to_port           = var.to_port2
}

resource "aws_vpc_security_group_ingress_rule" "inbound-jenkins-http3" {
  security_group_id = aws_security_group.tooling_security_group.id
 cidr_ipv4         = var.cidr_ipv4
  from_port         = var.from_port3
  ip_protocol       = var.ip_protocol
  to_port           = var.to_port3
}

resource "aws_vpc_security_group_ingress_rule" "inbound-jenkins-http4" {
  security_group_id = aws_security_group.tooling_security_group.id
  cidr_ipv4         = var.cidr_ipv4
  from_port         = var.from_port4
  ip_protocol       = var.ip_protocol
  to_port           = var.to_port4
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = aws_security_group.tooling_security_group.id
  cidr_ipv4         = var.cidr_ipv4
  ip_protocol       = "-1" # semantically equivalent to all ports
}