# 🛡️ Cloud Guardian

[![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com)
[![CloudWatch](https://img.shields.io/badge/CloudWatch-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com/cloudwatch/)
[![SNS](https://img.shields.io/badge/SNS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com/sns/)

<div align="center">
  <img src="https://img.shields.io/badge/Status-Active-success" alt="Status"/>
  <img src="https://img.shields.io/badge/Version-1.0.0-blue" alt="Version"/>
  <img src="https://img.shields.io/badge/License-MIT-yellow" alt="License"/>
</div>

## 📋 Project Overview

This project demonstrates the implementation of AWS CloudWatch monitoring with EC2 instance CPU utilization alerts through SNS notifications. The implementation includes:

### 🎯 Key Achievements
- ✅ Successfully created EC2 instance
- ✅ Implemented CloudWatch monitoring
- ✅ Set up SNS notifications
- ✅ Performed CPU spike testing
- ✅ Verified alert system

## 🚀 Implementation Journey

### 1️⃣ EC2 Instance Setup
- 🖥️ Created EC2 instance (t2.micro)
- 🔒 Configured security groups
- 🔑 Set up SSH access
- 📊 Enabled detailed monitoring

### 2️⃣ CloudWatch Integration
- 📈 Implemented metrics monitoring
- ⚡ Created CPU utilization alarms
- 🔔 Set up SNS notifications
- 📊 Configured 50% threshold

### 3️⃣ Testing and Validation
- 🔍 Initial monitoring check
- 🔌 SSH connection established
- 💻 CPU spike testing performed
- 📈 CloudWatch metrics verified
- 📧 SNS notifications confirmed

## 📊 Results and Metrics

### 🎯 Success Metrics
| Feature | Status | Details |
|---------|--------|---------|
| EC2 Instance | ✅ | Successfully created |
| CloudWatch | ✅ | Metrics collection working |
| SNS Alerts | ✅ | Notifications delivered |
| CPU Testing | ✅ | Spike test successful |

### 📈 Monitoring Results
- 📊 CPU utilization tracked
- 🔔 Alerts triggered at 50%
- 📧 Notifications received
- ⚡ Real-time monitoring confirmed

## 🛠️ Technologies Used

<div align="center">
  <img src="https://img.shields.io/badge/AWS_EC2-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" alt="AWS EC2"/>
  <img src="https://img.shields.io/badge/CloudWatch-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" alt="CloudWatch"/>
  <img src="https://img.shields.io/badge/SNS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" alt="SNS"/>
  <img src="https://img.shields.io/badge/SSH-000000?style=for-the-badge&logo=ssh&logoColor=white" alt="SSH"/>
</div>

## 📁 Project Structure
```
Cloud-Guardian/
├── EC2/                    # EC2 instance management
│   ├── main.tf            # Main Terraform configuration
│   ├── variables.tf       # Variable declarations
│   ├── terraform.tfvars   # Variable values
│   ├── provider.tf        # AWS provider configuration
│   └── README.md          # Project documentation
└── README.md              # This file
```

## 🔍 Key Features

<div align="center">
  <table>
    <tr>
      <td align="center">🖥️</td>
      <td>EC2 Instance</td>
      <td>Automated provisioning</td>
    </tr>
    <tr>
      <td align="center">📊</td>
      <td>CloudWatch</td>
      <td>Real-time monitoring</td>
    </tr>
    <tr>
      <td align="center">🔔</td>
      <td>SNS Alerts</td>
      <td>Instant notifications</td>
    </tr>
    <tr>
      <td align="center">🔒</td>
      <td>Security</td>
      <td>SSH access enabled</td>
    </tr>
  </table>
</div>

## 📈 Testing Results

### CPU Spike Testing
- 🔍 Initial state: Normal CPU utilization
- ⚡ Test: Generated CPU load
- 📊 Result: CloudWatch metrics captured
- 🔔 Alert: SNS notification received

### Monitoring Verification
- ✅ Metrics collection working
- ✅ Alerts triggering correctly
- ✅ Notifications delivering
- ✅ Real-time monitoring active

---

<div align="center">
  <h3>🌟 Project Status: Successfully Implemented 🌟</h3>
  <p>All features tested and verified working as expected</p>
</div>

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
   git clone https://github.com/amitkumar-Github8/Cloud-Guardian.git
   cd Cloud-Guardian
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
Cloud-Guardian/
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

⭐ **Star this repository if you find Cloud Guardian useful!** ⭐ 