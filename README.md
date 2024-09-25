# terragrunt-c2


# Terragrunt - Enhancing Terraform for Scalable Infrastructure

## Introduction
In this repository, we explore the use of **Terragrunt**, a wrapper for Terraform, to manage complex infrastructure setups. Terragrunt simplifies working with Terraform by promoting best practices like modularity, efficient remote state management, and organized project structures. This project includes examples of configuring an EC2 instance with Terragrunt and AWS.

## What is Terragrunt?
Terragrunt is a tool that enhances Terraform by:
- **DRYing** up configurations to avoid repetition across environments.
- Managing **remote state** configuration (e.g., S3, DynamoDB).
- Encouraging **modularity** and clean project structure.

## Key Benefits
- **Modular Infrastructure**: Reusable Terraform modules.
- **Remote State Management**: Simplified state management for distributed teams.
- **Environment Management**: Easily manage different environments (dev, staging, prod).

## Prerequisites
To get started with Terragrunt:
- **Install Terraform**: [Download from official Terraform website](https://www.terraform.io/downloads.html).
- **Install Terragrunt**: [Instructions](https://terragrunt.gruntwork.io/docs/getting-started/install/).
- **Install AWS CLI**: [AWS CLI installation guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).

## Project Structure

A recommended folder structure for a Terragrunt project:
