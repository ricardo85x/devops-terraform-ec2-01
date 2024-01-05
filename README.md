# Terraform EC2 Project

### Create 3 ec2 instances on aws using terraform
This setup will run a script after the instance is created to install apache and deploy a webpage project from github


> main.tf - terraform configuration 

> ec2.tf - ec2 instance configuration

> security_group.tf -> security group configuration

> ec2_script.sh - script that will boot after instance is created

### Setup

1 - install terraform cli

2 - install and configure aws cli 
- create a user inside aws with a group with admin access
- assign this user to aws cli with ```asw configure```

3 - deploy the instances with ```terraform apply```
