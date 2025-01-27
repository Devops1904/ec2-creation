# Terraform EC2 Deployment

This Terraform script deploys an EC2 instance in the specified AWS region with the given properties.

## Usage

1. Initialize Terraform:
    ```sh
    terraform init
    ```

2. Apply the Terraform configuration:
    ```sh
    terraform apply
    ```

## Notes

- The state file is configured to append resources and not delete already created EC2 instances.
- Ensure that your AWS credentials are configured properly.

## Module Variables

- `region`: The AWS region to deploy the instance in.
- `ami`: The AMI ID to use for the instance.
- `instance_type`: The type of instance to deploy.
- `tags`: A map of tags to assign to the instance.
