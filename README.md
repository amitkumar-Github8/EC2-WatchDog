# 🚀 EC2-WatchDog: AWS CloudWatch Monitoring System

[![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com)
[![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com)

> 🔍 **Project Overview**: A powerful monitoring system that keeps your EC2 instances under constant watch and alerts you instantly when something needs attention!

## 📋 Table of Contents
- [✨ Features](#-features)
- [🚀 Quick Start](#-quick-start)
- [📁 Project Structure](#-project-structure)
- [⚙️ Prerequisites](#️-prerequisites)
- [🔧 Setup Guide](#-setup-guide)
- [🔍 Monitoring Features](#-monitoring-features)
- [📧 Notification System](#-notification-system)
- [🔒 Security](#-security)
- [❓ FAQ](#-faq)
- [🤝 Contributing](#-contributing)
- [📞 Support](#-support)

## ✨ Features

### 🖥️ EC2 Monitoring
- 📊 Real-time instance metrics
- 🔄 Automated health checks
- 📈 Performance tracking
- 🚨 Instant alerts

### 📧 Smart Notifications
- 📱 Email alerts
- ⚡ Real-time updates
- 📊 Customizable thresholds
- 📝 Detailed reports

### 🔍 Log Management
- 📚 Automated log collection
- 🔄 Log rotation
- 📊 Log analysis
- 🔒 Secure storage

## 🚀 Quick Start

1. **Clone the Repository**
   ```bash
   git clone https://github.com/amitkumar-Github8/EC2-WatchDog.git
   cd EC2-WatchDog
   ```

2. **Configure AWS**
   ```bash
   aws configure
   # Enter your AWS credentials when prompted
   ```

3. **Deploy Infrastructure**
   ```bash
   cd EC2
   terraform init
   terraform plan
   terraform apply
   ```

## 📁 Project Structure
```
EC2-WatchDog/
├── EC2/                    # EC2 instance management
│   ├── main.tf            # Main Terraform configuration
│   ├── variables.tf       # Variable declarations
│   ├── terraform.tfvars   # Variable values
│   ├── provider.tf        # AWS provider configuration
│   └── README.md          # Project documentation
└── README.md              # This file
```

## ⚙️ Prerequisites

### 🛠️ Required Tools
- [Terraform](https://www.terraform.io/downloads.html) (v1.0.0+)
- [AWS CLI](https://aws.amazon.com/cli/)
- Git

### 🔑 AWS Requirements
- Active AWS account
- IAM permissions
- Access keys
- Verified email for SNS

## 🔧 Setup Guide

### 1. AWS Configuration
```bash
# Configure AWS CLI
aws configure
AWS Access Key ID: [Your Access Key]
AWS Secret Access Key: [Your Secret Key]
Default region name: [Your Region]
Default output format: json
```

### 2. SNS Setup
1. Go to AWS SNS Console
2. Create a new topic
3. Subscribe your email
4. Confirm subscription

### 3. Deploy Infrastructure
```bash
cd EC2
terraform init
terraform plan
terraform apply
```

## 🔍 Monitoring Features

### 📊 Metrics Tracked
- CPU Utilization
- Memory Usage
- Disk Space
- Network Traffic
- Instance Status

### 🚨 Alert Types
- High CPU Usage
- Low Disk Space
- Instance Down
- Memory Pressure
- Network Issues

## 📧 Notification System

### 📱 Notification Channels
- Email Alerts
- SNS Topics
- CloudWatch Alarms

### ⚙️ Alert Configuration
```hcl
# Example CloudWatch Alarm
resource "aws_cloudwatch_metric_alarm" "cpu_utilization" {
  alarm_name          = "high-cpu-utilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period             = "300"
  statistic          = "Average"
  threshold          = "80"
  alarm_description  = "This metric monitors EC2 CPU utilization"
}
```

## 🔒 Security

### 🔐 Best Practices
- 🔑 Secure credential management
- 👥 IAM role-based access
- 🔄 Regular key rotation
- 🏷️ Resource tagging

### 🛡️ Security Tools
- AWS CloudWatch
- AWS Config
- AWS Security Hub

## ❓ FAQ

### Q: How do I add more monitoring metrics?
A: Edit the CloudWatch configuration in `main.tf` to add custom metrics.

### Q: Can I customize alert thresholds?
A: Yes! Modify the threshold values in the CloudWatch alarms.

### Q: How do I add more notification channels?
A: Create additional SNS topics and subscribe them to your CloudWatch alarms.

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📞 Support

Need help? Here's how to get it:

1. 📚 Check the [AWS Documentation](https://docs.aws.amazon.com/)
2. 💬 Open an issue in this repository
3. 📧 Contact the maintainers

---

⭐ **Star this repository if you find it useful!** ⭐ 