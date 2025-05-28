resource "aws_instance" "instance_log" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  # Security group for SSH access
  vpc_security_group_ids = [aws_security_group.ssh_sg.id]

  tags = {
    Name        = "cloud-guardian-instance"
    Project     = "Cloud Guardian"
  }
}

# Security group for SSH access
resource "aws_security_group" "ssh_sg" {
  name        = "ssh-security-group"
  description = "Security group for SSH access"

  # Allow SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_cidr]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-sg"
  }
}
