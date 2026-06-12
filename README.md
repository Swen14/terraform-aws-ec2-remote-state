# Terraform AWS EC2 with Remote State Backend

## Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform on AWS.

The project provisions:

* Amazon S3 Bucket for Terraform Remote State
* DynamoDB Table for Terraform State Locking
* EC2 Instance
* Security Group for SSH Access

The infrastructure is managed entirely through Terraform and the code is version controlled using Git and GitHub.

---

## Architecture

Terraform Code
→ S3 Bucket (Remote State Storage)
→ DynamoDB Table (State Locking)
→ EC2 Instance
→ Security Group

---

## Why Remote State?

Terraform stores infrastructure information in a file called:

terraform.tfstate

Storing the state file locally is risky because:

* State can be lost if the machine fails
* Collaboration becomes difficult
* Multiple users can overwrite state

To solve this:

* Amazon S3 stores the Terraform state remotely
* DynamoDB provides state locking to prevent concurrent modifications

---

## Project Structure

```text
terraform-aws-ec2-remote-state/
│
├── backend/
│   ├── provider.tf
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars.example
│
├── ec2-infrastructure/
│   ├── provider.tf
│   ├── backend.tf
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars.example
│
├── screenshots/
│   ├── 1-github-repository.png
│   ├── 2-ec2-terraform-apply.png
│   ├── 3-s3-bucket-created.png
│   ├── 4-dynamodb-table-created.png
│   ├── 5-ec2-instance-running.png
│   ├── 6-terraform-output.png
│   └── 7-project-structure.png
│
├── README.md
└── .gitignore
```

---

## Technologies Used

* Terraform
* AWS EC2
* AWS S3
* AWS DynamoDB
* Git
* GitHub
* Linux

---

## Backend Infrastructure

The backend module creates:

### S3 Bucket

Used to store Terraform state remotely.

Features:

* Versioning Enabled
* Server-Side Encryption Enabled
* Public Access Blocked

### DynamoDB Table

Used for Terraform state locking.

Benefits:

* Prevents simultaneous Terraform operations
* Protects state consistency

---

## EC2 Infrastructure

The EC2 module creates:

* Amazon Linux EC2 Instance
* Security Group
* SSH Access Configuration

The Terraform state for this infrastructure is stored in the remote S3 backend.

---

## Terraform Workflow

Initialize Terraform:

```bash
terraform init
```

Format Code:

```bash
terraform fmt
```

Validate Configuration:

```bash
terraform validate
```

Preview Changes:

```bash
terraform plan
```

Create Infrastructure:

```bash
terraform apply
```

View Outputs:

```bash
terraform output
```

Destroy Infrastructure:

```bash
terraform destroy
```

---

## Git Workflow

Check Status:

```bash
git status
```

Stage Changes:

```bash
git add .
```

Create Commit:

```bash
git commit -m "Commit Message"
```

Push Changes:

```bash
git push
```

---

## Screenshots

### GitHub Repository

![GitHub Repository](screenshots/1-github-repository.png)

### Terraform Apply

![Terraform Apply](screenshots/2-ec2-terraform-apply.png)

### S3 Bucket

![S3 Bucket](screenshots/3-s3-bucket-created.png)

### DynamoDB Table

![DynamoDB Table](screenshots/4-dynamodb-table-created.png)

### EC2 Running

![EC2 Running](screenshots/5-ec2-instance-running.png)

### Terraform Output

![Terraform Output](screenshots/6-terraform-output.png)

### Project Structure

![Project Structure](screenshots/7-project-structure.png)

---

## Key Learnings

Through this project, I learned:

* Infrastructure as Code (IaC)
* Terraform State Management
* Remote State Storage with S3
* State Locking using DynamoDB
* EC2 Provisioning using Terraform
* Security Group Configuration
* Git Version Control
* GitHub Repository Management
* Terraform Project Structure
* AWS Resource Management

---

## Author

Swen Lemos

DevOps & Cloud Computing Enthusiast
