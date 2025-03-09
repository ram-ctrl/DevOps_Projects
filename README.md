# Terraform-IAM-User-Role-Project
## Overview
This Terraform project sets up an AWS IAM user, IAM role, S3 bucket, and an EC2 instance. The IAM user is granted full access to the S3 bucket, and the EC2 instance is assigned an IAM role for necessary permissions.

## Folder Structure
```
Terraform-IAM-Project/
│── iam/
│   ├── iam.tf
│── s3/
│   ├── s3.tf
│── ec2/
│   ├── ec2.tf
│── main.tf
│── variables.tf
│── outputs.tf
│── terraform.tfstate  <-- Terraform state file
│── terraform.tfstate.backup  <-- Backup of last state
│── .terraform/  <-- Stores provider plugins and dependencies
│── .terraform.lock.hcl  <-- Locks provider versions
│── README.md
```

## Files and Their Purpose
### `main.tf`
- Calls the IAM, S3, and EC2 modules to create the required resources.

### `provider.tf`
- Specifies AWS as the provider and sets the region.

### `variables.tf`
- Stores input variables such as the AWS region.

### `iam/iam.tf`
- Creates an IAM role with a trust policy allowing EC2 to assume the role.
- Creates an IAM user.
- Attaches a policy granting full access to S3.

### `s3/s3.tf`
- Creates an S3 bucket with private access.

### `ec2/ec2.tf`
- Launches an EC2 instance.
- Attaches the IAM role for permissions.

### `outputs.tf`
- Displays the IAM user name, S3 bucket name, and EC2 instance ID after deployment.

## Prerequisites
- Terraform installed ([Download Here](https://www.terraform.io/downloads))
- AWS CLI installed and configured ([Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html))
- AWS credentials set up

## How to Use
### 1️⃣ Initialize Terraform
```sh
terraform init
```
### 2️⃣ Plan the Changes
```sh
terraform plan
```
### 3️⃣ Apply the Configuration
```sh
terraform apply -auto-approve
```
### 4️⃣ Destroy the Infrastructure (if needed)
```sh
terraform destroy -auto-approve
```

## Outputs
After applying the Terraform script, you will see:
- IAM User Name
- S3 Bucket Name
- EC2 Instance ID

## Notes
- Ensure that your AWS account has the necessary permissions.
- Modify the AWS region and resource names as per your requirements.

---
🔹 **Author:** Ramya B L
🔹 **Project:** Terraform-IAM-User-Role-Project
