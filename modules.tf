module "kubernetes" {
  source                        = "./modules/kubernetes"
  image_username                = var.image_username
  image_name                    = var.image_name
  image_version                 = var.image_version
  app_name                      = var.app_name
  notification_url              = var.notification_url
  datasource_url                = module.database.database_endpoint
  db_name                       = var.db_name
  db_username                   = var.db_username
  db_password                   = var.db_password
  mercado_pago_access_token     = var.mercado_pago_access_token
  mercado_pago_qr_code_url      = var.mercado_pago_qr_code_url
  mercado_pago_pedido_url       = var.mercado_pago_pedido_url
  mercado_pago_vendedor_id      = var.mercado_pago_vendedor_id
  mercado_pago_caixa_url        = var.mercado_pago_caixa_url
  mercado_pago_loja_url         = var.mercado_pago_loja_url
  mercado_pago_caixa_id_externo = var.mercado_pago_caixa_id_externo
  mercado_pago_loja_id_externo  = var.mercado_pago_loja_id_externo
  mail_host                     = var.mail_host
  mail_port                     = var.mail_port
  mail_username                 = var.mail_username
  mail_password                 = var.mail_password
  email_from                    = var.email_from
  jwt_secret_key                = var.jwt_secret_key
}

module "eks" {
  source       = "git@github.com:arthurgabriel73/autoatendimento-infra.git?ref=main"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  region       = var.region
  tags         = var.tags
}

module "database" {
  source            = "git@github.com:arthurgabriel73/autoatendimento-database.git?ref=main"
  cidr_block        = var.cidr_block
  project_name      = var.project_name
  region            = var.region
  tags              = var.tags
  vpc_id            = module.eks.eks_vpc_id
  eks_sg_id         = module.eks.eks_sg_id
  database_name     = var.database_name
  database_username = var.database_username
  database_password = var.database_password
}
