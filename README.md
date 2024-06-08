## Module for environment creation using Cloud9, AWS SDK.

Cloud9 is an online development environment offered by Amazon Web Services (AWS), allowing developers to write, run, and debug code directly in a web browser. It supports multiple programming languages, integration with Git, and access to AWS resources, facilitating collaborative and agile development of cloud applications.

## Features 

Deploy with Terraform using Cloud9.

## How to use: modify the account id and account name inside the vars file.

```bash
module "cloud9" {
  source          = "./modules/cloud9"
  instance_type   = "t2.micro"
  name            = "Dev-01"
  image_id        = "amazonlinux-2023-x86_64"
  Ambiente        = "Development"
  connection_type = "CONNECT_SSM"
  owner_arn       = "arn:aws:iam::${var.accountid}:${var.accountname}"

}


```
## Using the Terraform registry.
```bash
module "dev" {
  source  = "guilhermesgit/cloud9/aws"
  version = "0.1.3"
  
  for_each = toset(["Dev", "DevOps"])

  instance_type   = "t2.micro"
  name            = "Cloud9-${each.key}"
  image_id        = "amazonlinux-2023-x86_64"
  Ambiente        = "Production"
  connection_type = "CONNECT_SSM"
  accountid = "111111111111"
  accountname = "iamuser-name"
}

```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloud9"></a> [cloud9](#module\_cloud9) | ./modules/cloud9 | private module |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_Ambiente"></a> [Ambiente](#input\_Ambiente) | Environment | `string` | n/a | yes |
| <a name="input_accountid"></a> [accountid](#input\_accountid) | Account ID | `string` | n/a | yes |
| <a name="input_accountname"></a> [accountname](#input\_accountname) | Account name | `string` | n/a | yes |
| <a name="input_connection_type"></a> [connection\_type](#input\_connection\_type) | Type of connection | `string` | n/a | yes |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | AMI Name | `string` |n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Instance name | `string` | n/a | yes |

## Outputs

No outputs.
