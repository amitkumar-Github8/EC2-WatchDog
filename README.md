# AWS CloudWatch Logging and Notification System

This repository contains a project for monitoring EC2 instances using AWS CloudWatch and sending notifications through AWS SNS (Simple Notification Service).

## Table of Contents
- [Project Overview](#project-overview)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Features](#features)
- [Security](#security)

## Project Overview

This project implements an automated monitoring system that:
- Creates and configures EC2 instances
- Sets up CloudWatch logging for instance metrics
- Configures SNS topics for email notifications
- Monitors instance health and performance
- Sends automated email alerts for important events

### Key Components
1. **EC2 Instance Management**
   Location: `EC2/`
   - Terraform configuration for EC2 instance creation
   - Security group and SSH access setup
   - Instance monitoring configuration
   - [View EC2 Project Details](EC2/README.md)

2. **CloudWatch Integration**
   - Automated log collection
   - Metric monitoring
   - Custom dashboards
   - Log retention policies

3. **SNS Notification System**
   - Email subscription management
   - Alert configuration
   - Notification templates
   - Delivery status tracking

## Getting Started

1. **Clone the Repository:**
   ```bash
   git clone <repository-url>
   cd Cloudwatch_Projects
   ```

2. **Set Up AWS Credentials:**
   ```bash
   aws configure
   ```

3. **Configure Email Notifications:**
   - Navigate to AWS SNS Console
   - Create a new topic
   - Subscribe your email address
   - Confirm subscription

4. **Deploy Infrastructure:**
   ```bash
   cd EC2
   terraform init
   terraform plan
   terraform apply
   ```

## Project Structure
```
Cloudwatch_Projects/
├── EC2/                    # EC2 instance management
│   ├── main.tf            # Main Terraform configuration
│   ├── variables.tf       # Variable declarations
│   ├── terraform.tfvars   # Variable values
│   ├── provider.tf        # AWS provider configuration
│   └── README.md          # Project documentation
└── README.md              # This file
```

## Prerequisites

Before using this project, ensure you have:

1. **AWS Account:**
   - Active AWS account
   - Appropriate IAM permissions
   - Access keys configured
   - Verified email address for SNS

2. **Required Tools:**
   - [Terraform](https://www.terraform.io/downloads.html) (v1.0.0 or later)
   - [AWS CLI](https://aws.amazon.com/cli/)
   - Git

3. **Knowledge:**
   - Basic understanding of AWS services (EC2, CloudWatch, SNS)
   - Familiarity with Terraform
   - Command-line interface usage

## Features

### Monitoring Capabilities
- CPU utilization tracking
- Memory usage monitoring
- Disk space monitoring
- Network traffic analysis
- Instance status checks

### Notification System
- Real-time email alerts
- Customizable alert thresholds
- Multiple notification channels
- Alert history tracking

### Log Management
- Automated log collection
- Log retention policies
- Log analysis tools
- Custom log filters

## Security

### Best Practices
1. **Credentials:**
   - Never commit AWS credentials
   - Use AWS CLI configuration
   - Consider using AWS SSO for enterprise environments

2. **Access Control:**
   - Follow principle of least privilege
   - Use IAM roles and policies
   - Regularly rotate access keys

3. **Resource Management:**
   - Tag resources appropriately
   - Monitor resource usage
   - Clean up unused resources

### Security Tools
- AWS CloudWatch for monitoring
- AWS Config for compliance
- AWS Security Hub for security findings

## Contributing

1. **Fork the Repository**
2. **Create a Feature Branch**
3. **Commit Changes**
4. **Push to Branch**
5. **Create Pull Request**


## Support

For support, please:
1. Check the project-specific README
2. Review AWS documentation
3. Open an issue in the repository 