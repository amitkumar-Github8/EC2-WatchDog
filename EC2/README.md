# AWS EC2 Instance Creation

This Terraform configuration creates an EC2 instance in AWS with SSH access.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Configuration Files](#configuration-files)
- [Steps to Create EC2 Instance](#steps-to-create-ec2-instance)
- [Variables Used](#variables-used)
- [Security Considerations](#security-considerations)
- [Troubleshooting](#troubleshooting)

## Prerequisites

Before you begin, ensure you have:
- [Terraform](https://www.terraform.io/downloads.html) installed (v1.0.0 or later)
- [AWS CLI](https://aws.amazon.com/cli/) configured
- AWS account with appropriate permissions
- Basic understanding of AWS EC2 and Terraform

## Project Structure
```
EC2/
├── main.tf           # Main EC2 instance configuration
├── variables.tf      # Variable declarations
├── terraform.tfvars  # Variable values
├── provider.tf       # AWS provider configuration
└── README.md         # This documentation
```

## Configuration Files

### main.tf
Contains the main EC2 instance configuration:
- EC2 instance resource definition
- Security group for SSH access
- Resource tagging
- Network interface configuration

### variables.tf
Defines all variables used in the configuration:
- Variable declarations with types
- Default values
- Input validation rules
- Documentation for each variable

### terraform.tfvars
Contains the actual values for variables:
- Environment-specific configurations
- Custom values for your deployment

### provider.tf
Configures the AWS provider:
- AWS provider settings
- Region configuration
- Credential management

## Steps to Create EC2 Instance

1. **Create SSH Key Pair:**
   ```bash
   aws ec2 create-key-pair \
       --key-name terraform_demo \
       --query 'KeyMaterial' \
       --output text > terraform_demo.pem
   ```

2. **Set Key Permissions:**
   ```bash
   chmod 400 terraform_demo.pem
   ```

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Review Changes:**
   ```bash
   terraform plan
   ```

5. **Create EC2 Instance:**
   ```bash
   terraform apply
   ```

## Variables Used

| Variable Name | Description | Type | Default Value |
|---------------|-------------|------|---------------|
| aws_region | AWS region to deploy resources | string | "us-east-1" |
| instance_name | Name tag for the EC2 instance | string | "instance_log" |
| instance_type | EC2 instance type | string | "t2.micro" |
| ami_id | ID of the AMI to use | string | "ami-0c7217cdde317cfec" |
| key_name | Name of the key pair | string | "terraform_demo" |
| ssh_cidr | CIDR block for SSH access | string | "0.0.0.0/0" |

## Security Considerations

1. **SSH Access:**
   - Current configuration allows SSH from anywhere (0.0.0.0/0)
   - For production, restrict to specific IP ranges
   - Consider using AWS Systems Manager Session Manager instead of direct SSH

2. **Key Management:**
   - Store private key securely
   - Never commit .pem files to version control
   - Rotate keys periodically
   - Use AWS Secrets Manager for key storage in production

3. **AWS Credentials:**
   - Use AWS CLI configuration
   - Or environment variables
   - Never hardcode credentials
   - Consider using AWS IAM roles for EC2

## Troubleshooting

### Common Errors

1. **Variable Declaration Errors:**
   - Ensure all variables are declared in `variables.tf`
   - Check variable names match exactly in all files
   - Run `terraform init` after adding variable declarations
   - Verify variable types match their usage

2. **Provider Initialization Issues:**
   - Check internet connectivity
   - Verify proxy settings if behind a proxy
   - Clear Terraform cache and retry:
     ```bash
     rm -rf .terraform
     rm -f .terraform.lock.hcl
     terraform init
     ```

3. **AWS Credential Errors:**
   - Configure AWS CLI:
     ```bash
     aws configure
     ```
   - Or set environment variables:
     ```bash
     export AWS_ACCESS_KEY_ID="your_access_key"
     export AWS_SECRET_ACCESS_KEY="your_secret_key"
     ```
   - Verify credentials with:
     ```bash
     aws sts get-caller-identity
     ```

4. **Key Pair Errors:**
   - Ensure key pair exists in AWS
   - Verify key pair name matches
   - Check if in correct region
   - Verify key pair permissions 