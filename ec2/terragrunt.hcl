# Include the root terragrunt.hcl configuration
include {
  path = find_in_parent_folders()
}

# Define any local variables specific to this module
locals {
  instance_type = "t2.micro"   # Instance type
 region        = "ca-central-1" 
}
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  region = "ca-central-1"
}
EOF
}

# Terragrunt configuration for the EC2 instance
terraform {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=v3.0.0"  # Source for EC2 Terraform module
}

# Pass the variables to the EC2 Terraform module
inputs = {
  instance_type = local.instance_type
   ami           = "ami-046d18c147c36bef1" 
  # Add any other necessary variables for the EC2 module
  # Adding tags
  tags = {
    Name        = "ec2_Instance"

  }
}

