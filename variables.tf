variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources (Name tag)"
}

variable "region" {
  type        = string
  description = "AWS region to create the resources"
}

variable "tags" {
  type        = map(any)
  description = "A map of tags to add to all AWS resources"
}

variable "database_name" {
  type        = string
  description = "Name of the database"
}

variable "database_username" {
  type        = string
  description = "Username for the database"
}

variable "database_password" {
  type        = string
  description = "Password for the database"
}

variable "image_username" {
  description = "Username for the container image"
  type        = string
}

variable "image_name" {
  description = "Name of the container image"
  type        = string
}

variable "image_version" {
  description = "Version of the container image"
  type        = string
}

variable "app_name" {
  description = "Name of the application"
  type        = string
}

variable "notification_url" {
  description = "URL for notifications"
  type        = string
}

variable "db_username" {
  description = "Username for the database"
  type        = string
}

variable "db_password" {
  description = "Password for the database"
  type        = string
}

variable "mercado_pago_access_token" {
  description = "Mercado Pago access token"
  type        = string
}

variable "mercado_pago_qr_code_url" {
  description = "Mercado Pago QR code URL"
  type        = string
}

variable "mercado_pago_pedido_url" {
  description = "Mercado Pago pedido URL"
  type        = string
}

variable "mercado_pago_vendedor_id" {
  description = "Mercado Pago vendedor ID"
  type        = string
}

variable "mercado_pago_caixa_url" {
  description = "Mercado Pago caixa URL"
  type        = string
}

variable "mercado_pago_loja_url" {
  description = "Mercado Pago loja URL"
  type        = string
}

variable "mercado_pago_caixa_id_externo" {
  description = "Mercado Pago caixa ID externo"
  type        = string
}

variable "mercado_pago_loja_id_externo" {
  description = "Mercado Pago loja ID externo"
  type        = string
}

variable "mail_username" {
  description = "Username for the email"
  type        = string
}

variable "mail_password" {
  description = "Password for the email"
  type        = string
}

variable "email_from" {
  description = "Email from"
  type        = string
}

variable "jwt_secret_key" {
  description = "JWT secret key"
  type        = string
}