resource "aws_instance" "cloud_guardian" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  key_name      = var.key_name
  monitoring    = true  # Enable detailed monitoring for CloudWatch

  # Security group for SSH access
  vpc_security_group_ids = [aws_security_group.ssh_sg.id]

  tags = {
    Name    = var.instance_name
    Project = var.project
  }
}

# Security group for SSH access
resource "aws_security_group" "ssh_sg" {
  name        = "cloud-guardian-ssh"
  description = "Allow SSH access to Cloud Guardian instance"

  # Allow SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_cidr]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "cloud-guardian-ssh-sg"
    Project = var.project
  }
}

# SNS Topic for CloudWatch Alarms
resource "aws_sns_topic" "cpu_alerts" {
  name = "cloud-guardian-cpu-alerts"

  tags = {
    Name    = "cloud-guardian-cpu-alerts"
    Project = var.project
  }
}

# SNS Topic Subscription
resource "aws_sns_topic_subscription" "email_notification" {
  topic_arn = aws_sns_topic.cpu_alerts.arn
  protocol  = "email"
  endpoint  = var.notification_email
}

# CloudWatch Alarm for CPU Utilization
resource "aws_cloudwatch_metric_alarm" "cpu_high" {
  alarm_name          = "cloud-guardian-cpu-high"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "50"
  alarm_description   = "This alarm monitors EC2 CPU utilization"
  alarm_actions       = [aws_sns_topic.cpu_alerts.arn]

  dimensions = {
    InstanceId = aws_instance.cloud_guardian.id
  }

  tags = {
    Name    = "cloud-guardian-cpu-alarm"
    Project = var.project
  }
}
