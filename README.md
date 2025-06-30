# Terraform Setup & Usage

## Installation

To clone this repo:

```sh
git clone git@github.com:Tzeene1459/terraform-iac-template.git
cd terraform-iac-template 
```

### Install Terraform (Mac)
Use a terminal of choice or just use vscode to open this project and install directly from the terminal. 

```sh
brew install terraform
```
Alias for convenience:
```sh
alias tf=terraform
```
Initialize Terraform:
```sh
tf init
```

### Configure AWS CLI Credentials

Set up a named profile (`terraform-env` is arbitrary):

```sh
aws configure --profile terraform-env
export AWS_PROFILE=terraform-env
```
For multiple AWS accounts (e.g., Prod and DevTest), configure separate profiles:

```sh
aws configure --profile terraform-prod
aws configure --profile terraform-devtest
```
Ensure `~/.aws/credentials` does not contain inactive or deleted access keys to avoid errors like:
```
The security token included in the request is invalid.
```

## Terraformer (Reverse Terraform Tool)

### Installation
```sh
brew install terraformer
```

### Import AWS Resources
Example usage:
```sh
terraformer import aws --resources=redshift
terraformer import aws --resources=*
```
After importing, upgrade the AWS provider to ensure compatibility:
```sh
tf init
tf state replace-provider "registry.terraform.io/-/aws" "hashicorp/aws"
tf init -upgrade
```
For one-time setup, remove `provider.tf` and symlink `common.tf` in each subdirectory:
```sh
cd iam  # or subnet, redshift, etc.
ln -s ../common.tf ./common.tf
```

## Terraform Backend
Terraform uses a **backend** to store state files. Best practices:
- Use a **remote backend** (e.g., S3) instead of local directories.
- Do **not** commit `terraform.tfstate` files to version control.

## Running Terraform Commands

### Initialization
```sh
tf init -reconfigure
```

### Workspaces
Create and switch workspaces for different environments:
```sh
tf workspace new dev
```
If using workspaces:
```sh
tf workspace select dev
```
Alternatively, manage environments with `tfvars`:
```sh
tf plan -var-file=values.prod.tfvars
TF_LOG=DEBUG tf plan -var-file=values.prod.tfvars
```

### Applying Changes
```sh
tf apply -var-file=values.prod.tfvars
```

### Managing State Files
When running `tf apply`, state files are stored in an S3 bucket. Example:
```
/iac/env:/dev/terraform-state/vpc/terraform.tfstate
```

## Additional Tips

### Upgrade AWS Provider
If you update the AWS provider version (e.g., in `common.tf`), run:
```sh
tf init -upgrade
```

### Understanding Terraform Initialization
Running `terraform init` in a resource directory (e.g., `vpc/`) generates:
- **`.terraform/` directory** – Stores provider plugins, modules, and Terraform’s working state.
- **`.terraform.lock.hcl`** – Locks provider versions for consistency.
- **`terraform.tfstate`** (only after `apply` or `plan -out`) – Tracks infrastructure state.

### Syncing Terraform State with AWS
Refresh state to align with actual infrastructure:
```sh
tf refresh
```
List tracked resources:
```sh
tf state list
```
If the state is empty or corrupted, restore an earlier version of the state file.

---
This guide provides a structured and clear approach to setting up and managing Terraform environments efficiently.

