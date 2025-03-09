#creating an IAM role with permissions to assume EC2 service
resource "aws_iam_role" "example_role" {
  name = "example-role"
  assume_role_policy = <<EOF
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ]
}
EOF
}

#Creating an IAM user for s3 bucket
resource "aws_iam_user" "example_user" {
  name= "example-user"
}


resource "aws_iam_user_policy_attachment" "attach_policy" {
  user = aws_iam_user.example_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  
}