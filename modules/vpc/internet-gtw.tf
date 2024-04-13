resource "aws_internet_gateway" "tooling_internet_gtw" {
  vpc_id = aws_vpc.tooling_vpc.id

  tags = {
    Name = "internet-gtw"
  }
}