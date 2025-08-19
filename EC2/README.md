# 🛡️ Cloud Guardian - EC2 Infrastructure Module

This Terraform module creates a complete AWS monitoring setup with EC2, CloudWatch, and SNS.

![AWS](https://img.shields.io/badge/AWS-FF9900?style=flat-square&logo=amazonaws&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-623CE4?style=flat-square&logo=terraform&logoColor=white)
![Status](https://img.shields.io/badge/Status-Working-brightgreen?style=flat-square)

---

## 📋 Module Overview

This module provisions:

| Resource | Type | Purpose |
|----------|------|---------|
| `aws_instance.cloud_guardian` | EC2 Instance | Server to monitor |
| `aws_security_group.ssh_sg` | Security Group | SSH access control |
| `aws_cloudwatch_metric_alarm.cpu_high` | CloudWatch Alarm | CPU monitoring |
| `aws_sns_topic.cpu_alerts` | SNS Topic | Notification routing |
| `aws_sns_topic_subscription.email_notification` | SNS Subscription | Email delivery |
| `data.aws_ami.amazon_linux` | Data Source | Latest Amazon Linux AMI |

---

## ⚙️ Configuration Variables

### Required Variables
```hcl
variable "key_name" {
  description = "Name of the EC2 Key Pair for SSH access"
  type        = string
  # Must be created in AWS Console first
}

variable "notification_email" {
  description = "Email address to receive CloudWatch alarm notifications"
  type        = string
  # Example: "your-email@gmail.com"
}
```

### Optional Variables
| Variable | Default | Description |
|----------|---------|-------------|
| `aws_region` | `us-east-1` | AWS region for deployment |
| `instance_name` | `cloud-guardian-instance` | Name tag for EC2 instance |
| `instance_type` | `t2.micro` | EC2 instance size (free tier) |
| `ssh_cidr` | `0.0.0.0/0` | ⚠️ SSH access range (restrict this!) |
| `project` | `Cloud Guardian` | Project name for tagging |

---

## 🧩 Configuration File

Edit `terraform.tfvars` with your values:

```hcl
# Cloud Guardian Configuration
aws_region        = "us-east-1"
instance_name     = "cloud-guardian-instance"
project           = "Cloud Guardian"
instance_type     = "t2.micro"

# REQUIRED: Update these values
key_name          = "your-key-pair-name"        # Create in AWS Console
notification_email = "your-email@example.com"   # Your email for alerts
ssh_cidr          = "YOUR_PUBLIC_IP/32"         # Your IP for security
```

---

## 🚀 Deployment Commands

```bash
# Initialize Terraform (first time only)
terraform init

# Preview changes
terraform plan

# Deploy infrastructure
terraform apply

# Destroy when done
terraform destroy
```

---

## 📤 Module Outputs

After deployment, you'll see:

```bash
Outputs:

instance_id = "i-1234567890abcdef0"
public_ip = "54.123.45.67"
ssh_command = "ssh -i your-key-pair-name.pem ec2-user@54.123.45.67"
cloudwatch_alarm = "cloud-guardian-cpu-high"
sns_topic = "cloud-guardian-cpu-alerts"

next_steps = <<EOT

🎉 Cloud Guardian deployed successfully!

Next steps:
1. Check your email (your-email@example.com) and confirm SNS subscription
2. SSH to instance: ssh -i your-key-pair-name.pem ec2-user@54.123.45.67
3. Run CPU test: cd default_metrics_demo && python3 cpu_spike.py
4. Check CloudWatch alarms in AWS Console

EOT
```

---

## 📊 CloudWatch Alarm Configuration

### CPU Alarm Settings
- **Metric**: CPUUtilization
- **Threshold**: 50%
- **Evaluation Periods**: 2
- **Period**: 120 seconds (2 minutes)
- **Statistic**: Average
- **Action**: Send SNS notification

### Alarm States
| State | Description | Action |
|-------|-------------|--------|
| 🟢 **OK** | CPU < 50% | No notification |
| 🔴 **ALARM** | CPU ≥ 50% for 4 minutes | Email sent |
| 🟡 **INSUFFICIENT_DATA** | Not enough data | No notification |

---

## 🔒 Security Configuration

### Security Group Rules
```hcl
# Inbound Rules
Port 22 (SSH): Source = var.ssh_cidr

# Outbound Rules  
All traffic: Destination = 0.0.0.0/0
```

### Security Best Practices
- ✅ Restrict `ssh_cidr` to your IP (`YOUR_IP/32`)
- ✅ Use strong SSH key pairs
- ✅ Enable detailed monitoring
- ✅ Regular security updates

---

## 🧪 Testing the Setup

### 1. Verify Instance
```bash
# Check instance status
aws ec2 describe-instances --instance-ids $(terraform output -raw instance_id)

# SSH to instance
ssh -i your-key.pem ec2-user@$(terraform output -raw public_ip)
```

### 2. Test CPU Alarm
```bash
# Simple CPU stress test
python3 -c "
import time, threading, multiprocessing
def load(): [sum(i*i for i in range(100000)) for _ in range(1000)]
[threading.Thread(target=load).start() for _ in range(multiprocessing.cpu_count())]
time.sleep(300)  # Run for 5 minutes
"
```

### 3. Verify Monitoring
- Check CloudWatch console for metrics
- Verify alarm triggers (CPU > 50%)
- Confirm email notification received

---

## 📁 File Structure

```
EC2/
├── main.tf           # Core infrastructure resources
├── variables.tf      # Input variables and validation
├── outputs.tf        # Output values after deployment
├── provider.tf       # AWS provider configuration
├── data.tf          # Data sources (AMI lookup)
├── terraform.tfvars # Configuration values (edit this!)
├── .gitignore       # Terraform files to ignore
└── README.md        # This documentation
```

---

## 🆘 Troubleshooting

### Common Issues

| Issue | Symptoms | Solution |
|-------|----------|----------|
| **Invalid AMI** | Terraform plan fails | Check region, AMI might not be available |
| **Key pair not found** | Instance creation fails | Create key pair in AWS Console first |
| **Security group error** | SSH connection failed | Verify `ssh_cidr` includes your IP |
| **SNS subscription pending** | No email alerts | Check email and confirm subscription |

### Debug Commands
```bash
# Check AWS credentials
aws sts get-caller-identity

# Validate Terraform
terraform validate

# Check resources
terraform state list

# Show specific resource
terraform state show aws_instance.cloud_guardian
```

---

## 💰 Cost Estimation

| Resource | Type | Monthly Cost |
|----------|------|--------------|
| EC2 t2.micro | Compute | $0 (free tier) |
| CloudWatch Alarms | Monitoring | $0 (10 alarms free) |
| SNS Notifications | Messaging | $0 (1000 emails free) |
| **Total** | | **$0** (if in free tier) |

---

## 🎯 Module Usage

This module can be used standalone or as part of a larger infrastructure:

```hcl
module "cloud_guardian" {
  source = "./EC2"
  
  key_name          = "my-key-pair"
  notification_email = "admin@company.com"
  ssh_cidr          = "10.0.0.0/8"
  instance_type     = "t3.micro"
}

output "monitoring_dashboard" {
  value = module.cloud_guardian.next_steps
}
```

---

<div align="center">

**🛡️ Cloud Guardian EC2 Module - Simple, Secure, Scalable**

</div> 