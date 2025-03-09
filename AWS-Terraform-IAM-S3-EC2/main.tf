# Specifies the AWS provider and region
provider "aws" {
  region = "us-east-1"
  }
#calling IAM module to create IAm resources
module "iam" {
  source = "./iam"
}

#calling s3 module to create an S3 bucket
module "s3" {
  source = "./s3"
}

#calling Ec2 module to create instance
module "ec2" {
  source = "./ec2"
}