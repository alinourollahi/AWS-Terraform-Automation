# AWS Terraform Automation

This repository contains Terraform configurations for automating the deployment of AWS infrastructure. It creates a VPC with a public subnet and deploys an Amazon Linux EC2 instance configured with Docker and an NGINX container.

The `modules/ec2` directory contains the reusable configuration for the EC2 instance, security group, and SSH key pair. SSH access is restricted to the IP range provided through the `my_ip` variable, while the NGINX application is exposed on port 8080.

---
If you have any questions about this repo, feel free to reach me at alinourollahi777@gmail.com.

You can also find me at https://www.linkedin.com/in/ali-nourollahi/.
