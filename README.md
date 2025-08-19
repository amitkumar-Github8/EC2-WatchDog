# 🛡️ Cloud Guardian - AWS Monitoring Made Simple

**A beginner-friendly project that sets up AWS CloudWatch monitoring for EC2 instances with automatic email alerts.**

![AWS](https://img.shields.io/badge/AWS-FF9900?style=flat-square&logo=amazonaws&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-623CE4?style=flat-square&logo=terraform&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![Status](https://img.shields.io/badge/Status-Working-brightgreen?style=flat-square)

---

## 🎯 What This Project Does

| Component | Description |
|-----------|-------------|
| 🖥️ **EC2 Instance** | Creates a small Amazon Linux server (free tier eligible) |
| 📊 **CloudWatch Monitoring** | Watches CPU usage in real-time |
| 🚨 **Smart Alerts** | Sends email when CPU > 50% for 4 minutes |
| 🧪 **Test Script** | Python script to trigger alerts for testing |

---

## 🚀 Quick Start (5 Minutes)

### Prerequisites ✅
- AWS Account (free tier works)
- [Terraform](https://www.terraform.io/downloads) installed
- [AWS CLI](https://aws.amazon.com/cli/) installed

### Step 1: Configure AWS
```bash
aws configure
# Enter your AWS Access Key ID
# Enter your AWS Secret Access Key  
# Enter your region (e.g., us-east-1)
# Enter output format: json
```

### Step 2: Create SSH Key
1. Go to [AWS EC2 Console](https://console.aws.amazon.com/ec2/)
2. Click "Key Pairs" → "Create key pair"
3. Name: `cloud-guardian-key`
4. Download the `.pem` file

### Step 3: Configure Project
Edit `EC2/terraform.tfvars`:
```hcl
key_name          = "cloud-guardian-key"           # Your key pair name
notification_email = "your-email@example.com"      # Your email for alerts
ssh_cidr          = "YOUR_PUBLIC_IP/32"           # Your IP from whatismyip.com
```

### Step 4: Deploy
```bash
cd EC2
terraform init
terraform apply
# Type 'yes' when prompted
```

### Step 5: Test
```bash
# SSH to your instance (use IP from terraform output)
ssh -i cloud-guardian-key.pem ec2-user@YOUR_INSTANCE_IP

# Run CPU test
cd /home/ec2-user
git clone https://github.com/amitkumar-Github8/Cloud-Guardian.git
cd Cloud-Guardian/default_metrics_demo
python3 cpu_spike.py
```

**You should receive an email alert within 5-10 minutes!** ✅

---

## 📊 What Gets Created

| Resource | Purpose | Cost |
|----------|---------|------|
| EC2 t2.micro | Server to monitor | Free tier |
| CloudWatch Alarm | CPU monitoring | Free |
| SNS Topic | Email notifications | Free (1000 emails/month) |
| Security Group | SSH access control | Free |

---

## 🧪 Testing Your Setup

### Option 1: Simple CPU Test (Recommended)
```bash
# On your EC2 instance
python3 -c "
import time, threading, multiprocessing
def cpu_load(): [sum(i*i for i in range(50000)) for _ in range(1000)]
print('Starting 5-minute CPU test...')
[threading.Thread(target=cpu_load).start() for _ in range(multiprocessing.cpu_count())]
time.sleep(300)
print('Test complete!')
"
```

### Option 2: Using Project Script
```bash
cd Cloud-Guardian/default_metrics_demo
python3 cpu_spike.py
```

### ✅ Success Indicators
- 📧 Email alert received
- 🔴 CloudWatch alarm shows "In alarm" state
- 📈 CPU metrics visible in AWS console

---

## 🔍 Monitoring Your Instance

### AWS Console Locations
- **Instance**: EC2 → Instances → `cloud-guardian-instance`
- **Monitoring**: CloudWatch → Alarms → `cloud-guardian-cpu-high`
- **Metrics**: CloudWatch → Metrics → EC2 → Per-Instance Metrics
- **Notifications**: SNS → Topics → `cloud-guardian-cpu-alerts`

---

## 🆘 Troubleshooting

| Problem | Solution |
|---------|----------|
| **SSH Connection Failed** | • Check security group allows your IP<br>• Verify key pair exists<br>• Use correct username: `ec2-user` |
| **No Email Alerts** | • Check spam folder<br>• Confirm SNS subscription in email<br>• Verify alarm threshold reached |
| **Terraform Apply Failed** | • Check AWS credentials: `aws sts get-caller-identity`<br>• Verify region availability<br>• Check IAM permissions |
| **Can't Find Instance** | • Check correct AWS region<br>• Look for tag: `Name: cloud-guardian-instance` |

---

## 🧹 Clean Up (Important!)

**Destroy resources to avoid charges:**
```bash
cd EC2
terraform destroy
# Type 'yes' when prompted
```

---

## 📁 Project Structure

```
Cloud-Guardian/
├── 📄 README.md                    # This guide
├── 📄 SIMPLE_DEPLOY.md            # Detailed deployment steps
├── 📁 EC2/                        # Infrastructure code
│   ├── 🔧 main.tf                 # Core AWS resources
│   ├── 📝 variables.tf            # Configuration options
│   ├── 📤 outputs.tf              # Deployment results
│   ├── ⚙️ provider.tf             # AWS provider setup
│   ├── 📊 data.tf                 # AMI lookup
│   ├── ⚡ terraform.tfvars        # Your settings (edit this!)
│   └── 📋 README.md               # EC2 module docs
└── 📁 default_metrics_demo/       # Testing tools
    └── 🐍 cpu_spike.py            # CPU load simulator
```

---

## 🎓 Learning Outcomes

After completing this project, you'll understand:

| Concept | What You'll Learn |
|---------|-------------------|
| **Infrastructure as Code** | How Terraform creates AWS resources |
| **Cloud Monitoring** | How CloudWatch collects and analyzes metrics |
| **Alerting Systems** | How to set up automated notifications |
| **AWS Security** | How security groups control access |
| **Remote Access** | How to securely connect to cloud servers |

---

## 💰 Cost Information

- ✅ Uses AWS Free Tier eligible resources
- ✅ CloudWatch basic monitoring is free
- ✅ SNS: First 1000 emails per month are free
- ✅ **Total cost**: $0 if you're in free tier

---

## 🔐 Security Best Practices

- ✅ Use specific IP ranges, not `0.0.0.0/0`
- ✅ Keep SSH keys secure and private
- ✅ Regularly rotate AWS credentials
- ✅ Monitor billing for unexpected charges
- ✅ Destroy resources when not needed

---

## 💡 Next Steps

Ready to expand? Try these:
- Add disk space monitoring
- Set up multiple alarm thresholds
- Create a custom dashboard
- Monitor multiple instances
- Add Slack notifications
- Implement auto-scaling

---

## 🤝 Support

Need help?
- 📖 Check [AWS Documentation](https://docs.aws.amazon.com/cloudwatch/)
- 🐛 Open an [Issue](https://github.com/amitkumar-Github8/Cloud-Guardian/issues)
- 💬 Ask questions in the repo discussions

---

<div align="center">

## 🎉 Success!

If you can receive an email alert when running the CPU test, congratulations! You've successfully set up AWS monitoring with CloudWatch and SNS.

**⭐ If this project helped you learn AWS monitoring, please star the repository! ⭐**

Made with ❤️ for the AWS learning community

</div>
