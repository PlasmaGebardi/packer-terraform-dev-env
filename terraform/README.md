# Terraform

Theses folders contain different setups and modular division based on functionality or practicality, all made with terraform. Terraform is relatively simple open-source framework that enables infrastructure as code (IaC) type of approach easily.

# Usage

These modules assume you use remote state, more specifically AWS S3 bucket for storing state and dynamoDB to acquire locks. Locking is needed for multi-user usage.

Storage is for creating S3 buckets and IAM roles, skip this if you want to do something else.

Basic-env (currently the only version of the env) contains very rudimentary basis for environments with only ec2-instance and security groups.