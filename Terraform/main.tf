# Defining the provider and region
provider "aws" {
  region = "us-east-1"
}

# Defining the security group
resource "aws_security_group" "roberto_sg" {
  name        = "roberto-sg1"
  description = "Allow all inbound traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Defining the EC2 instances
resource "aws_instance" "roberto_ec2" {
  count           = 3
  ami             = "ami-04a81a99f5ec58529"
  instance_type   = "t2.micro"
  key_name        = "vockey"
  security_groups = [aws_security_group.roberto_sg.name]

  tags = {
    Name = "roberto-ec2-${count.index + 1}"
  }
}

# Output the instance IDs
output "instance_ids" {
  value = aws_instance.roberto_ec2[*].id
}

# Output the public IP addresses of the instances
output "instance_public_ips" {
  value = aws_instance.roberto_ec2[*].public_ip
}

