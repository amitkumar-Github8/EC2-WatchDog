variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "instance_log"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "ID of the AMI to use for the instance"
  type        = string
  default     = "ami id"  # Amazon Linux 2023 AMI
}

variable "key_name" {
  description = "Name of the key pair to use for the instance"
  type        = string
  default     = "terraform_demo"
}

variable "ssh_cidr" {
  description = "CIDR block for SSH access"
  type        = string
  default     = "0.0.0.0/0"
} 
