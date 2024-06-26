## Módulo para criação de ambiente utilizando o cloud9, SDK da AWS.


O Cloud9 é um ambiente de desenvolvimento online oferecido pela Amazon Web Services (AWS), permitindo aos desenvolvedores escrever, executar e depurar código diretamente em um navegador web. Ele suporta várias linguagens de programação, integração com Git e acesso a recursos da AWS, facilitando o desenvolvimento colaborativo e ágil de aplicativos na nuvem.

## Características 

Utilizar o ambiente de desenvolvimento da AWS dentro da console.

## Como utilizar: em account id e accountname alterar dentro do arquivo vars

```bash
module "cloud9" {
  source          = "./modules/cloud9"
  instance_type   = "t2.micro"
  name            = "Dev-01"
  image_id        = "amazonlinux-2023-x86_64"
  Ambiente        = "Desenvolvimento"
  connection_type = "CONNECT_SSM"
  owner_arn       = "arn:aws:iam::${var.accountid}:${var.accountname}"

}


```
## Utilizando o terraform registry
```bash
module "dev" {
  source  = "guilhermesgit/cloud9/aws"
  version = "0.1.3"
  
  for_each = toset(["Dev", "DevOps"])

  instance_type   = "t2.micro"
  name            = "Cloud9-${each.key}"
  image_id        = "amazonlinux-2023-x86_64"
  Ambiente        = "Desenvolvimento"
  connection_type = "CONNECT_SSM"
  accountid = "111111111111"
  accountname = "usuario-dev"
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
| <a name="input_Ambiente"></a> [Ambiente](#input\_Ambiente) | Adiciona o ambiente | `string` | n/a | yes |
| <a name="input_accountid"></a> [accountid](#input\_accountid) | Id da Conta | `string` | n/a | yes |
| <a name="input_accountname"></a> [accountname](#input\_accountname) | Nome da conta | `string` | n/a | yes |
| <a name="input_connection_type"></a> [connection\_type](#input\_connection\_type) | Tipo de conexão | `string` | n/a | yes |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | Id da imagem | `string` |n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Tipo de instância | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Nome da máquina | `string` | n/a | yes |

## Outputs

No outputs.
