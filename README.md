# devinitly-aws-root-state-bucket
This repo holds the terraform state bucket for the root aws account of the organization. In addtion the terraform.tfstate file can found along side the configuration files. AN explanation can be found below

## Motivation
- To demonstrate how to setup the first state bucket within your first aws account.
- Outline the chicken and egg scenario for tfstate files and root accounts. 
 
## Technologies
- Terraform 0.12
- git-crypt
- aws
- s3

## Requirements
- AWS acccount
- AWS Profile and credentials configured
- Terraform and git-crypt installed

## Usage
When creating the very first aws account and state bucket for terraform infrastructure you will encounter a *chicken and egg scenario* when attempting to keep everything in Infrastructure as code(IAC).

The best practice for terraform is to use a remote state to store the terraform state files in s3; however, this promotes a challange you need a state bucket to store the state bucket configuration.
One simple solution to this problem is to create the infrastructure locally and save the state file to its own repository. Which wil present another challange of the potential datat hat can be foudn with in your state files. To resolve the final issue, we can use git-crypt to encrypt the state file before pushing the state file to the repository and only trusted GPG users and Symmetric keys can unencrypt the file if needed.

**Access Logging**<br/>
This bucket also has server access logging configured to out put to a target bucket. To handle this, a second bucket had to be created within the account IAC directory next to this repository. Once again you can encounter a *chicken and egg* scenario by not having a logging bucket state to consume outputs to supply the target bucket name. To resolve this simply manually ad the target bucket name and prefix to the variable after creation and reapply the terraform configuration.

Once everything above is configured and tested, no further conflicting configuration should be encountered.
