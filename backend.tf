
terraform {
  backend "s3" {
    bucket         = "terraformstatefiles-us-west-2"
    key            = "ec2-deployment/ec2-creation-terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"

    profile = "default"
  }
}

// ...existing code...
