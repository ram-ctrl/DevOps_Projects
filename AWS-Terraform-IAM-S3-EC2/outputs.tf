# Output IAM user name
output "iam_user_name" {
  value = aws_iam_user.example_user.name
}

# Output S3 bucket name
output "s3_bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}

# Output EC2 instance ID
output "ec2_instance_id" {
  value = aws_instance.example_instance.id
}
