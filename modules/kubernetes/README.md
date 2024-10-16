<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_deployment_v1.app_deployment](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment_v1) | resource |
| [kubernetes_horizontal_pod_autoscaler_v2.hpa](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/horizontal_pod_autoscaler_v2) | resource |
| [kubernetes_namespace.app_namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_secret_v1.app_secret](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret_v1) | resource |
| [kubernetes_service_v1.app_service](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_v1) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Name of the application | `string` | n/a | yes |
| <a name="input_datasource_url"></a> [datasource\_url](#input\_datasource\_url) | Datasource URL | `string` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Name of the database | `string` | n/a | yes |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | Password for the database | `string` | n/a | yes |
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | Username for the database | `string` | n/a | yes |
| <a name="input_email_from"></a> [email\_from](#input\_email\_from) | Email from | `string` | n/a | yes |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | Docker image name | `string` | n/a | yes |
| <a name="input_image_username"></a> [image\_username](#input\_image\_username) | Docker image username | `string` | n/a | yes |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | Docker image version | `string` | n/a | yes |
| <a name="input_jwt_secret_key"></a> [jwt\_secret\_key](#input\_jwt\_secret\_key) | JWT secret key | `string` | n/a | yes |
| <a name="input_kubernetes_namespace"></a> [kubernetes\_namespace](#input\_kubernetes\_namespace) | Namespace to deploy the resources | `string` | `"autoatendimento-namespace"` | no |
| <a name="input_mail_host"></a> [mail\_host](#input\_mail\_host) | Host for the email | `string` | n/a | yes |
| <a name="input_mail_password"></a> [mail\_password](#input\_mail\_password) | Password for the email | `string` | n/a | yes |
| <a name="input_mail_port"></a> [mail\_port](#input\_mail\_port) | Port for the email | `string` | n/a | yes |
| <a name="input_mail_username"></a> [mail\_username](#input\_mail\_username) | Username for the email | `string` | n/a | yes |
| <a name="input_mercado_pago_access_token"></a> [mercado\_pago\_access\_token](#input\_mercado\_pago\_access\_token) | Mercado Pago access token | `string` | n/a | yes |
| <a name="input_mercado_pago_caixa_id_externo"></a> [mercado\_pago\_caixa\_id\_externo](#input\_mercado\_pago\_caixa\_id\_externo) | Mercado Pago caixa ID externo | `string` | n/a | yes |
| <a name="input_mercado_pago_caixa_url"></a> [mercado\_pago\_caixa\_url](#input\_mercado\_pago\_caixa\_url) | Mercado Pago caixa URL | `string` | n/a | yes |
| <a name="input_mercado_pago_loja_id_externo"></a> [mercado\_pago\_loja\_id\_externo](#input\_mercado\_pago\_loja\_id\_externo) | Mercado Pago loja ID externo | `string` | n/a | yes |
| <a name="input_mercado_pago_loja_url"></a> [mercado\_pago\_loja\_url](#input\_mercado\_pago\_loja\_url) | Mercado Pago loja URL | `string` | n/a | yes |
| <a name="input_mercado_pago_pedido_url"></a> [mercado\_pago\_pedido\_url](#input\_mercado\_pago\_pedido\_url) | Mercado Pago pedido URL | `string` | n/a | yes |
| <a name="input_mercado_pago_qr_code_url"></a> [mercado\_pago\_qr\_code\_url](#input\_mercado\_pago\_qr\_code\_url) | Mercado Pago QR code URL | `string` | n/a | yes |
| <a name="input_mercado_pago_vendedor_id"></a> [mercado\_pago\_vendedor\_id](#input\_mercado\_pago\_vendedor\_id) | Mercado Pago vendedor ID | `string` | n/a | yes |
| <a name="input_notification_url"></a> [notification\_url](#input\_notification\_url) | URL for notifications | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_service_load_balancer"></a> [app\_service\_load\_balancer](#output\_app\_service\_load\_balancer) | The external IP of the service |
| <a name="output_app_service_port"></a> [app\_service\_port](#output\_app\_service\_port) | The port of the service |
<!-- END_TF_DOCS -->