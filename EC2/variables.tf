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

variable "project" {
  description = "Project name for resource tagging"
  type        = string
  default     = "Cloud Guardian"
} 
