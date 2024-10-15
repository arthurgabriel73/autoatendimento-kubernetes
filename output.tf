output "app_service_load_balancer_ip" {
  value       = module.kubernetes.app_service_load_balancer.status[0].load_balancer[0].ingress[0].hostname
  description = "The host of the service"
}

output "app_service_port" {
  value       = module.kubernetes.app_service_port[0].target_port
  description = "The port of the service"
}

output "database_endpoint" {
  value       = split(":", "${module.database.database_endpoint}")[0]
  description = "The endpoint of the database"
}
