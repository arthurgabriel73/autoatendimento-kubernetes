resource "kubernetes_secret_v1" "app_secret" {
  metadata {
    name = "${var.app_name}-secret"
    namespace = kubernetes_namespace.app_namespace.metadata[0].name
  }

  data = {
    APP_NAME                      = base64encode(var.app_name)
    NOTIFICATION_URL              = base64encode(var.notification_url)
    DB_USERNAME                   = base64encode(var.db_username)
    DB_PASSWORD                   = base64encode(var.db_password)
    DB_NAME                       = base64encode(var.db_name)
    DATASOURCE_URL                = base64encode(var.datasource_url)
    MERCADO_PAGO_ACCESS_TOKEN     = base64encode(var.mercado_pago_access_token)
    MERCADO_PAGO_QR_CODE_URL      = base64encode(var.mercado_pago_qr_code_url)
    MERCADO_PAGO_PEDIDO_URL       = base64encode(var.mercado_pago_pedido_url)
    MERCADO_PAGO_VENDEDOR_ID      = base64encode(var.mercado_pago_vendedor_id)
    MERCADO_PAGO_CAIXA_URL        = base64encode(var.mercado_pago_caixa_url)
    MERCADO_PAGO_LOJA_URL         = base64encode(var.mercado_pago_loja_url)
    MERCADO_PAGO_CAIXA_ID_EXTERNO = base64encode(var.mercado_pago_caixa_id_externo)
    MERCADO_PAGO_LOJA_ID_EXTERNO  = base64encode(var.mercado_pago_loja_id_externo)
    MAIL_USERNAME                 = base64encode(var.mail_username)
    MAIL_PASSWORD                 = base64encode(var.mail_password)
    EMAIL_FROM                    = base64encode(var.email_from)
    JWT_SECRET_KEY                = base64encode(var.jwt_secret_key)
  }
}
