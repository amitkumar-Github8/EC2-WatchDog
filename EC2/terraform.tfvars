# Cloud Guardian Configuration
# Update these values before running terraform apply

aws_region        = "us-east-1"
instance_name     = "cloud-guardian-instance"
project           = "Cloud Guardian"
instance_type     = "t2.micro"

# IMPORTANT: Replace these with your actual values
key_name          = "your-key-pair-name"        # Create this in AWS Console first
notification_email = "your-email@example.com"   # Your email for alerts
ssh_cidr          = "0.0.0.0/0"                # Replace with YOUR_IP/32 for security 
