# 🛡️ Cloud Guardian

[![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com)
[![CloudWatch](https://img.shields.io/badge/CloudWatch-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com/cloudwatch/)
[![SNS](https://img.shields.io/badge/SNS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com/sns/)

<div align="center">
  <img src="https://img.shields.io/badge/Status-Active-success" alt="Status"/>
  <img src="https://img.shields.io/badge/Version-1.0.0-blue" alt="Version"/>
  <img src="https://img.shields.io/badge/License-MIT-yellow" alt="License"/>
</div>

<div align="center">
  <img src="Assets/cloud-guardian-dashboard-overview.png" alt="Cloud Guardian Dashboard" width="800"/>
  <p><i>Cloud Guardian Dashboard Overview</i></p>
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

<div align="center">
  <img src="Assets/monitoring/cloud-guardian-metrics.png" alt="CloudWatch Metrics" width="600"/>
  <p><i>CloudWatch Metrics Dashboard</i></p>
</div>

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
├── default_metrics_demo/  # Testing and demonstration
│   └── cpu_spike.py       # CPU load testing script
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
├── default_metrics_demo/  # Testing and demonstration
│   └── cpu_spike.py       # CPU load testing script
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

<div align="center">
  <table>
    <tr>
      <td>
        <img src="Assets/monitoring/cloud-guardian-cpu-normal.png" alt="Normal CPU Usage" width="400"/>
        <p><i>Normal CPU Utilization</i></p>
      </td>
      <td>
        <img src="Assets/monitoring/cloud-guardian-cpu-high.png" alt="High CPU Usage" width="400"/>
        <p><i>High CPU Utilization</i></p>
      </td>
    </tr>
  </table>
</div>

### 🚨 Alert Types
- High CPU Usage
- Low Disk Space
- Instance Down
- Memory Pressure
- Network Issues

<div align="center">
  <img src="Assets/alerts/cloud-guardian-alarm-triggered.png" alt="Alarm Triggered" width="600"/>
  <p><i>CloudWatch Alarm Triggered</i></p>
</div>

## 📧 Notification System

### 📱 Notification Channels
- Email Alerts
- SNS Topics
- CloudWatch Alarms

<div align="center">
  <img src="Assets/alerts/cloud-guardian-sns-subscription.png" alt="SNS Subscription" width="600"/>
  <p><i>SNS Topic Subscription</i></p>
</div>

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

## 🔧 Testing Tools

### CPU Spike Testing Script
The `cpu_spike.py` script is a utility for testing CloudWatch CPU utilization alarms. It simulates CPU load to verify monitoring and alerting systems.

<div align="center">
  <img src="Assets/monitoring/cloud-guardian-monitoring-setup.png" alt="Monitoring Setup" width="600"/>
  <p><i>CloudWatch Monitoring Setup</i></p>
</div>

#### Features
- 🔄 Configurable CPU utilization percentage
- ⏱️ Adjustable test duration
- 📊 Precise CPU load simulation
- 🧪 Automated testing support

#### Usage
```bash
# Run with default settings (80% CPU for 30 seconds)
python cpu_spike.py

# Run with custom parameters
python cpu_spike.py --duration 60 --cpu-percent 90
```

#### Parameters
| Parameter | Default | Description |
|-----------|---------|-------------|
| duration | 30 | Test duration in seconds |
| cpu_percent | 80 | Target CPU utilization percentage |

#### Example Scenarios
1. **Basic Testing**
   ```bash
   python cpu_spike.py
   # Simulates 80% CPU load for 30 seconds
   ```

2. **High Load Testing**
   ```bash
   python cpu_spike.py --duration 60 --cpu-percent 90
   # Simulates 90% CPU load for 60 seconds
   ```

3. **Quick Test**
   ```bash
   python cpu_spike.py --duration 15 --cpu-percent 50
   # Simulates 50% CPU load for 15 seconds
   ```

#### Integration with CloudWatch
- 🔍 Triggers CPU utilization alarms
- 📊 Generates CloudWatch metrics
- 🔔 Tests SNS notifications
- 📈 Validates monitoring setup