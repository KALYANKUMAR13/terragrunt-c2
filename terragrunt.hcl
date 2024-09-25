# root/terragrunt.hcl

# Define local variables for your configuration
locals {
  s3_bucket_name   = "terraform-state-kalyan-practice-dev" # S3 bucket name
  region           = "ca-central-1"                         # AWS region where your bucket is located
}

# Remote state configuration to store the Terraform state in S3
remote_state {
  backend = "s3"

  config = {
    encrypt                      = true                                         # Enable encryption
    bucket                       = local.s3_bucket_name                        # S3 bucket name
    key                          = "${path_relative_to_include()}/terraform.tfstate" # Path for storing state files
    region                       = local.region                                 # AWS region
    disable_aws_client_checksums = true                                       # Disable checksums
  }

  generate = {
    path      = "backend.tf"                                              # Generate backend.tf
    if_exists = "overwrite_terragrunt"                                   # Overwrite if it exists
  }
}
