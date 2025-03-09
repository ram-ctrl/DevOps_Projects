#Creating an s3 bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-terraform"
  acl = "private"
}
