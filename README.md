# terraform-project

This project is responsible for creating Infrastrcture on AWS.

## Introduction

The terraform project bootstrap A simple "Hello World" application on a fixed Auto Scaling group EC2.instances(t3.nano).
The Auto Scaling Group is behind an ALB(Application Load Balancer) exposing port 80 to the internet. 

## Prerequisites

- Terraform
- Git

## Run procedures 

1.Copy the git repo into your localhost

```bash
$ git clone git@github.com:tomwiz1/terraform-project.git
```

2.Change to the terraform-project folder and run terraform init for installing required providers :

```bash
$ cd terraform-project
$ terraform init 
```

3. Start the provisioning:

```bash
$ terraform apply 
```
