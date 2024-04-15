region = "us-west-2"

vpc_cidr = "172.16.0.0/16"

subnet_cidr = "172.16.1.0/24"

zone = "us-west-2a"

ami-jenkins = "ami-033ff2dc87c1dfdc6"
keypair     = "devops"

tooling_vpc = "aws_vpc.tooling_vpc.id"
from_port1  = 8080
to_port1    = 8080
from_port2  = 22
to_port2    = 22
from_port3  = 80
to_port3    = 80
from_port4  = 443
to_port4    = 443
ip_protocol = "tcp"
cidr_ipv4   = "0.0.0.0/0"