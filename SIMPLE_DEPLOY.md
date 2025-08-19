# 🚀 Simple Deployment Guide

## Before You Start

1. **Install Required Tools**:
   - Download and install [Terraform](https://www.terraform.io/downloads.html)
   - Download and install [AWS CLI](https://aws.amazon.com/cli/)

2. **Get Your AWS Credentials**:
   - Log into AWS Console
   - Go to IAM > Users > Your User > Security Credentials
   - Create Access Key if you don't have one
   - Save the Access Key ID and Secret Access Key

## Step-by-Step Deployment

### 1. Configure AWS CLI
```bash
aws configure
```
Enter:
- AWS Access Key ID: `[Your Access Key]`
- AWS Secret Access Key: `[Your Secret Key]`
- Default region name: `us-east-1`
- Default output format: `json`

### 2. Create SSH Key Pair
1. Go to AWS Console > EC2 > Key Pairs
2. Click "Create key pair"
3. Name: `cloud-guardian-key`
4. Type: `.pem`
5. Download and save the file

### 3. Update Configuration
Edit `EC2/terraform.tfvars` file:
```hcl
key_name          = "cloud-guardian-key"
notification_email = "your-actual-email@gmail.com"
ssh_cidr          = "YOUR_PUBLIC_IP/32"
```

To find your public IP: Go to [whatismyip.com](https://whatismyip.com)

### 4. Deploy
```bash
cd EC2
terraform init
terraform apply
```
Type `yes` when asked.

### 5. Confirm Email
- Check your email for AWS SNS confirmation
- Click the confirmation link

### 6. Test
SSH to your instance:
```bash
ssh -i cloud-guardian-key.pem ec2-user@[INSTANCE_IP]
```

Run CPU test:
```bash
python3 ../default_metrics_demo/cpu_spike.py
```

### 7. Clean Up
```bash
terraform destroy
```
Type `yes` when asked.

## Expected Results

✅ You should receive an email alert when CPU usage goes above 50%  
✅ You can see the alarm in AWS CloudWatch Console  
✅ You can SSH to the EC2 instance  

## If Something Goes Wrong

1. **Terraform errors**: Check your AWS credentials
2. **Can't SSH**: Check your IP in the security group
3. **No email**: Check spam folder and SNS confirmation
4. **Need help**: Open an issue on GitHub

That's it! Simple and straightforward. 🎉
