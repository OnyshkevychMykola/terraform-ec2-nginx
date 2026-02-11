output "server_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.web.public_ip
}

# ALB & ASG
output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer (use for testing traffic distribution)"
  value       = aws_lb.main.dns_name
}

output "alb_zone_id" {
  description = "Route53 zone ID of the ALB (for alias records)"
  value       = aws_lb.main.zone_id
}

output "alb_url" {
  description = "URL to access the app via ALB (HTTP)"
  value       = "http://${aws_lb.main.dns_name}"
}

output "asg_name" {
  description = "Name of the Auto Scaling Group"
  value       = aws_autoscaling_group.web.name
}