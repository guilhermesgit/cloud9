output "cloud9_url" {
  value = "https://us-east-1.console.aws.amazon.com/cloud9/ide/${aws_cloud9_environment_ec2.example.id}"
}

output "owner_arn" {
  value = aws_cloud9_environment_ec2.example.owner_arn

}