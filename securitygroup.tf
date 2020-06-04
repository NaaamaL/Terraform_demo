resource "aws_security_group" "khdemo-security-group" {
  vpc_id      = aws_vpc.khdemo-vpc.id
  name        = "khdemo-security-group"
  description = "security group that allows ssh and all egress traffic"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "khdemo-security-group"
  }
}

