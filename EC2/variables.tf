variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_name" {
  description = "Name of the Cloud Guardian EC2 instance"
  type        = string
  default     = "cloud-guardian-instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the EC2 Key Pair for SSH access"
  type        = string
  # You need to create this key pair in AWS Console first
}

variable "ssh_cidr" {
  description = "CIDR block for SSH access (use your public IP/32 for security)"
  type        = string
  default     = "0.0.0.0/0"  # WARNING: This allows access from anywhere. Replace with your IP/32
}

variable "notification_email" {
  description = "Email address to receive CloudWatch alarm notifications"
  type        = string
  # Example: "your-email@gmail.com"
}

variable "project" {
  description = "Project name for resource tagging"
  type        = string
  default     = "Cloud Guardian"
}
