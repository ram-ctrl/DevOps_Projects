#creating an EC2 instance and attaching IAM
resource "aws_instance" "example_instance" {
  ami = "ami-0c55b1drthtyht"
  instance_type = "t2.micro" 


#Assign IAM role to EC2 instance
iam_instance_profile=aws_iam_role.example_role

tags={
  Name="ExampleInstances"
}
}