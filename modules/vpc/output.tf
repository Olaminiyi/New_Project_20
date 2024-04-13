output "vpc_id" {
  value = aws_vpc.tooling_vpc.id
}

output "subnet_id" {
  value = aws_subnet.tooling_subnet.id
}
output "instance_profile" {
  value = aws_iam_instance_profile.jenkins-ecr-profile.id
}