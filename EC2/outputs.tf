# Important information after deployment

output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.cloud_guardian.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.cloud_guardian.public_ip
}

output "ssh_command" {
  description = "SSH command to connect to the instance"
  value       = "ssh -i ${var.key_name}.pem ec2-user@${aws_instance.cloud_guardian.public_ip}"
}

output "cloudwatch_alarm" {
  description = "CloudWatch alarm name"
  value       = aws_cloudwatch_metric_alarm.cpu_high.alarm_name
}

output "sns_topic" {
  description = "SNS topic for alerts"
  value       = aws_sns_topic.cpu_alerts.name
}

output "next_steps" {
  description = "What to do next"
  value = <<-EOT
  
  🎉 Cloud Guardian deployed successfully!
  
  Next steps:
  1. Check your email (${var.notification_email}) and confirm SNS subscription
  2. SSH to instance: ssh -i ${var.key_name}.pem ec2-user@${aws_instance.cloud_guardian.public_ip}
  3. Run CPU test: cd default_metrics_demo && python3 cpu_spike.py
  4. Check CloudWatch alarms in AWS Console
  
  EOT
}
