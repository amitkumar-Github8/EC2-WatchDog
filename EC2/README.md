# 🛡️ Cloud Guardian - EC2 Module

[![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com)
[![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io)

## Overview
This module is part of the Cloud Guardian project, providing EC2 instance management with CloudWatch monitoring and SNS notifications.

## 📋 Table of Contents
- [🚀 Quick Start](#-quick-start)
- [📁 Configuration Files](#-configuration-files)
- [⚙️ Prerequisites](#️-prerequisites)
- [🔧 Setup Guide](#-setup-guide)

## 🚀 Quick Start

1. Initialize Terraform
2. Review changes
3. Apply configuration

## 📁 Configuration Files

### main.tf
- EC2 instance configuration
- Security group with SSH access
- CloudWatch alarm for CPU utilization
- SNS topic for notifications

### variables.tf
- AWS region
- Instance name
- Instance type
- AMI ID
- Key pair name
- SSH CIDR block

## ⚙️ Prerequisites

### Required Tools
- Terraform (v1.0.0+)
- AWS CLI
- Git

### AWS Requirements
- Active AWS account
- IAM permissions
- Access keys
- Verified email for SNS

## 🔧 Setup Guide

1. Configure AWS CLI with your credentials
2. Create SSH key pair for instance access
3. Deploy infrastructure using Terraform 

## Usage
```hcl
module "ec2_instance" {
  source = "github.com/amitkumar-Github8/Cloud-Guardian//EC2"
  // ... existing code ...
}
``` 