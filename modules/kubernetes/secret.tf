resource "kubernetes_secret_v1" "app_secret" {
  metadata {
    name      = "${var.app_name}-secret"
    namespace = kubernetes_namespace.app_namespace.metadata[0].name
  }

  data = {
    APP_NAME                      = var.app_name
    NOTIFICATION_URL              = var.notification_url
    DATASOURCE_URL                = var.datasource_url
    DB_NAME                       = var.db_name
    DB_USERNAME                   = var.db_username
    DB_PASSWORD                   = var.db_password
    MERCADO_PAGO_ACCESS_TOKEN     = var.mercado_pago_access_token
    MERCADO_PAGO_QR_CODE_URL      = var.mercado_pago_qr_code_url
    MERCADO_PAGO_PEDIDO_URL       = var.mercado_pago_pedido_url
    MERCADO_PAGO_VENDEDOR_ID      = var.mercado_pago_vendedor_id
    MERCADO_PAGO_CAIXA_URL        = var.mercado_pago_caixa_url
    MERCADO_PAGO_LOJA_URL         = var.mercado_pago_loja_url
    MERCADO_PAGO_CAIXA_ID_EXTERNO = var.mercado_pago_caixa_id_externo
    MERCADO_PAGO_LOJA_ID_EXTERNO  = var.mercado_pago_loja_id_externo
    MAIL_HOST                     = var.mail_host
    MAIL_PORT                     = var.mail_port
    MAIL_USERNAME                 = var.mail_username
    MAIL_PASSWORD                 = var.mail_password
    EMAIL_FROM                    = var.email_from
    JWT_SECRET_KEY                = var.jwt_secret_key
  }
}
