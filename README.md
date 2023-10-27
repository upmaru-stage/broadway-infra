# broadway-infra

Welcome to your insterra generated platform code. You can execute this code either via CLI from your local machine or via terraform cloud.

We recommend using terraform cloud for production setup.

## Custom Configs and Updates

We recommend leaving the files generated by insterra untouched. If you need to add custom configuration, you can do so by creating a new file `main.tf`.

When you make a change using OpsMaru's wizard changes will be propagated to this repository via pull-request. If you've connected this repository to terraform cloud upon merging terraform cloud will run and update your infrastructure automatically.

## Terraform Cloud

Setup a free terraform cloud account and create a workspace. You'll need to connect the workspace to this repository. Follow the video below to learn more.

[![rick](https://img.youtube.com/vi/dQw4w9WgXcQ/0.jpg)](https://www.youtube.com/watch?v=dQw4w9WgXcQ)

## Terraform CLI

You'll need to install terraform on your local machine and create `.auto.tfvars` with the following content

```hcl
aws_access_key = "<replace with your values>"
aws_region = "<replace with your values>"
aws_secret_key = "<replace with your values>"
identifier = "broadway-infra"
instellar_auth_token = "<replace with your values>"
instellar_host = "<replace with your values>"

```

Then simply run:

```bash
terraform init
terraform plan
terraform apply
```