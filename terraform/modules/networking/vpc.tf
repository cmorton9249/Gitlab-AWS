resource "aws_vpc" "gitlab_vpc" {
  cidr_block = "10.0.0.0/26" #64 addresses: 10.0.0.0 - 10.0.0.63
}
